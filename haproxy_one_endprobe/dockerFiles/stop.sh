#! /bin/bash
pkill haproxy
sleep 2

python ./log_intf_statistics.py /tngbench_share/result.yml
halog -srv -H < haproxy.log | column -t
date > /tngbench_share/stop.txt

