#!/bin/sh
i3-input -F "exec urxvt -e man %s"
#urxvt -e man `i3-input | grep command | sed -e 's/^command = \(.*\)$/\1/g'`
