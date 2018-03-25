#!/usr/bin/env bash

sysbench oltp_read_write.lua --table-size=1000 --tables=16 \
    --mysql-db=test --mysql-user=root_2_ali  \
    --threads=16 --db-driver=mysql \
    --mysql-host=rm-4xo6qqo7187928035.mysql.germany.rds.aliyuncs.com \
    --mysql-user=root_2_ali --mysql-password=$1 prepare

sysbench oltp_read_write.lua --table-size=1000 --tables=16 \
    --mysql-db=test --mysql-user=root_2_ali  \
    --threads=16 --db-driver=mysql \
    --mysql-host=rm-4xo6qqo7187928035.mysql.germany.rds.aliyuncs.com \
    --mysql-user=root_2_ali --mysql-password=$1 run

sysbench oltp_read_write.lua --table-size=1000 --tables=16 \
    --mysql-db=test --mysql-user=root_2_ali  \
    --threads=16 --db-driver=mysql \
    --mysql-host=rm-4xo6qqo7187928035.mysql.germany.rds.aliyuncs.com \
    --mysql-user=root_2_ali --mysql-password=$1 cleanup