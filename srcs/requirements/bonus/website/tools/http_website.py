from http.server import HTTPServer, BaseHTTPRequestHandler
import os
import mimetypes

HOST = "0.0.0.0"
PORT = 8083

class InceptionWebsite(BaseHTTPRequestHandler):

  def do_GET(self):
    file_path = self.path.lstrip('/')
    if not file_path:
      file_path = 'index.html'
    file_path = os.path.abspath(os.path.join('.', file_path))

    if os.path.exists(file_path):
      mime_type, _ = mimetypes.guess_type(file_path)
      with open(file_path, 'rb') as file:
        self.send_response(200)
        self.send_header("Content-type", mime_type)
        self.end_headers()
        self.wfile.write(file.read())
    else:
      self.send_error(404, 'File not found %s' % self.path)

if __name__ == '__main__':
  try:
    server = HTTPServer((HOST, PORT), InceptionWebsite)
    print(f'Starting server on address {HOST}:{PORT}...')
    server.serve_forever()
  except KeyboardInterrupt:
    print('^C received, shutting down the server')
    server.server_close()
