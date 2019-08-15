#!/bin/bash

curl -x 172.17.0.4:80 ab -n 10000 -c 30 http://172.17.0.3/ > test.txt

exec "$@"
