#!/bin/bash

if [ -n "$KEY" -a -n "$MAC" ]; then
	NAME=$(curl -v https://api.macaddress.io/v1?apiKey=$KEY&output=json&search=$MAC | grep "companyName" | awk -F\"\ '{print $2}')
else
	echo "You must provide arguments for both KEY and MAC"
fi