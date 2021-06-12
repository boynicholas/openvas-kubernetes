#!/bin/bash

# Start Redis
redis-server /etc/redis/redis.conf

# sync nvt feed
/opt/gvm/bin/greenbone-nvt-sync && openvas -u