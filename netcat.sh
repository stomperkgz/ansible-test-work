#!/bin/bash
while true; do (echo -e 'HTTP/1.1 200 OK\r\n' ; echo "$(cat /myenv.env)") | nc -lp 80; done
