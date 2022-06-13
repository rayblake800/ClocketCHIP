#!/bin/bash

HOUR=`TZ=America/Chicago date +"%I"`
MINUTE=`TZ=America/Chicago date +"%M"`

digits=(0x3f 0x06 0x5b 0x4f 0x66 0x6d 0x7d 0x07 0x7f 0x6f)

HOUR1=${digits[${HOUR:0:1}]}
HOUR2=${digits[${HOUR:1:1}]}
MIN1=${digits[${MINUTE:0:1}]}
MIN2=${digits[${MINUTE:1:1}]}

if [ ${HOUR:0:1} -eq 0 ]
then
  HOUR1=0x00
fi

/usr/sbin/i2cset -y -f 2 0x71 0x00 $HOUR1 0x00 $HOUR2 0x00 0xff 0x00 $MIN1 0x00 $MIN2 0x00 i 