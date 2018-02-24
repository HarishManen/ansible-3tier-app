#! /bin/bash

source ~/credential.rc
~/bin/order_svc.sh -c 'OPENTLC Automation' -i 'Three Tier Application' -t 1 -y > ~/order_svc.log
