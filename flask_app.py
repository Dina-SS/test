import os

from flask import Flask,request


app = Flask(__name__)


@app.route('/', methods=['GET', 'POST'])
def main():
    return "Hello"


if __name__ == "__main__":
    #app.run(debug=True, port=5500)
    #,port=int(os.environ.get('PORT', 8080)))
    app.run(debug=True, host='0.0.0.0')

    
