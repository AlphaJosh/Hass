#!/bin/sh
#kill -9 `ps -aef | grep 'hass' | grep -v grep | awk '{print $2}'`
#kill -9 $(pidof hass)

hass -v -c /config


