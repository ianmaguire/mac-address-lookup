#!/bin/bash

if [ -n "$KEY" -a -n "$MAC" ]; then
	RESPONSE=$(curl 'https://api.macaddress.io/v1?apiKey=$KEY&output=vendor&search=$MAC')
	echo $RESPONSE
else
	echo "You must provide arguments for both KEY and MAC"
fi