from flask import Flask

app = Flask(__name__)

@app.route('/')
def index():
    return "Hello, bilal!"

app.run (host="0.0.0.0")