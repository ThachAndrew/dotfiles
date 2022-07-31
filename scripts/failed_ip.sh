#!/usr/bin/bash

# prints ips of failed logins
# For Geolocator, use this in conjunction with https://github.com/pieqq/PyGeoIpMap

journalctl -u sshd | grep -i "unable\|closed\|fatal\|invalid\|failed" | grep -o -P '(\b25[0-5]|\b2[0-4][0-9]|\b[01]?[0-9][0-9]?)(\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)){3}' | uniq 
