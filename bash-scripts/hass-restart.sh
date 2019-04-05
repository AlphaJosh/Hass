#!/bin/sh
kill -9 $(pidof python3)

systemctl restart hass.service


