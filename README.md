# velserv
Velbus USB to TCP/IP

# Installation
1. Download the reposetory
2. run the following commands

# Build & run
```bash
#curl https://github.com/jeroends/velserv/blob/master/velserv.c > velserv.c # Curl only if the file is not working.
docker build -t velserv .
docker run -d --restart=always --device="/dev/ttyACM0:/dev/ttyACM0" -p 3788:3788 -t velserv
```
