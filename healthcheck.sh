#!/bin/sh
curl -f -I http://localhost:24000/health | grep "HTTP/1.1 200 OK"
