#!/bin/bash

/usr/sbin/i2cset -y -f 2 0x71 0x21
/usr/sbin/i2cset -y -f 2 0x71 0xef
/usr/sbin/i2cset -y -f 2 0x71 0x81