#!/usr/bin/env python3

from flask import Flask, Response
from requests import request

app = Flask(__name__)

@app.route("/")
def root():
    return app.send_static_file("./index.html")

@app.route("/data")
def proxy_data():
    res = request(
            method = 'POST',
            url = 'https://tampere.sometec.fi/showSpace03S.php',
            data = {
                "token": "",
                "group": "600020,600030",
                "area": "0",
                "qqq": "1",
                "language": "1",
                "maintenance_on": "0"
            }
            )

    return Response(res.content, res.status_code, mimetype='application/json')
