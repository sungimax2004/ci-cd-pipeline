from flask import Flask, render_template
import socket
import os

app = Flask(__name__)

@app.route("/")
def index():
    hostname = socket.gethostname()
    environment = os.getenv("APP_ENV", "dev")
    return render_template("index.html", hostname=hostname, environment=environment)

@app.route("/health")
def health():
    return {"status": "ok"}, 200

if __name__ == "__main__":
    port = int(os.getenv("PORT", 5000))
    app.run(host="0.0.0.0", port=port)
