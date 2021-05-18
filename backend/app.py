from flask import Flask
import logging

app = Flask(__name__)
app.config['SERVER_NAME'] = "devweb.cornichon.xyz"
app.config['DEBUG'] = True

app.logger.setLevel(logging.INFO)


@app.route('/')
def hello_world():
    return 'Hello World!'


@app.route('/ping')
def ping():
    return 'pong!'


@app.route('/api/ping')
def api_ping():
    return 'api-pong..'


if __name__ == '__main__':
    app.run()
