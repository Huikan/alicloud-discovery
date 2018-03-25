#!/usr/bin/env bash

sysbench fileio --file-num=10 --file-total-size=20G prepare

sysbench fileio --file-test-mode=rndrw --file-total-size=20G --file-num=10 run > $(hostname)_diskio_report

sysbench fileio --file-num=10 --file-total-size=20G cleanup

sysbench cpu --cpu-max-prime=10000 run > $(hostname)_cpu_report

./speedtest-cli >  $(hostname)_network_report