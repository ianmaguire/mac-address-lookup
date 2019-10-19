# MAC Address Lookup
A dockerized mac address lookup tool that accepts command line parameters and returns a response via CLI. 

---
### Requirements
You must have docker installed, and running. You will also need a valid API key from https://macaddress.io 

### Install or upgrade
To download the latest docker container run the following command
```
docker pull ianmaguire/mac-address-lookup
```

### Security considerations
Your API key could be stored in your command line history. 

Command line history in bash can be turned off by running the following command. 
```
set +o history
```

### Use
Run the following command substituting the API_KEY, and MAC address appropriately
```
docker run --rm --name mack -eKEY='API_KEY' -eMAC='00:00:00:ff:ef:57' ianmaguire/mac-address-lookup
```

The MAC address above should return Xerox Corp if you have a valid API key. 
