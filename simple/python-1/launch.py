from flask import Flask

app = Flask(__name__)

@app.route("/")
def index():
    return "{\"Hello Python World\"}"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=int("81"), debug=True)


