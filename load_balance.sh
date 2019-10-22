#!/bin/bash
# Use this shell to inspect system state
docker exec -it netisp /bin/bash -c "stty sane; load_balance.pl $@"
