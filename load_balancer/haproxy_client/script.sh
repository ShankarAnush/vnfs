#!/bin/bash

curl -L http://172.18.0.4:80/ &&
ab -n 10000 -c 30 http://172.18.0.4:80/ > test.txt

exec "$@"
