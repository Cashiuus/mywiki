#!/bin/bash

firefox http://localhost:9000 &
# NOTE: This python module uses port 800 by default
#python -m SimpleHTTPServer 9000
python3 -m http.server 9000
