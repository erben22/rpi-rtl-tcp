#!/bin/bash

IP="$(ifconfig eth0 | awk -F ' *|:' '/inet addr/{print $4}')"
/usr/local/bin/rtl_tcp -a ${IP}
