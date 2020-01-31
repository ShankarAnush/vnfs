#!/bin/bash
date > /tngbench_share/start.txt

#echo "Starting Promethues exporter..."
#python3 prometheus_exporter.py &#> exporter.log &

haproxy -f /etc/haproxy/haproxy.cfg -D # &

echo "HAProxy VNF started ..."


