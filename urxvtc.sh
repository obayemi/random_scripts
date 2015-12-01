#!/bin/bash

if ! pgrep urxvtd #> /dev/null
then
  urxvtd -f
fi

urxvtc $@
