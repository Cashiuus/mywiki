#!/bin/bash

open http://localhost:9000
python -m SimpleHTTPServer 9000
python -m http.server 9000
