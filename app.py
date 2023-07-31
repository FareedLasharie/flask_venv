from flask import Flask

app = Flask(__name__)


@app.route('/')
def hellworld ():
    return "Hello, FAREED!"


app.run()
