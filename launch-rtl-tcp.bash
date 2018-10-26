#!/bin/bash

IP="$(hostname -i)"
/usr/local/bin/rtl_tcp -a ${IP}
