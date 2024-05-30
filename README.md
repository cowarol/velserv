# velserv
Velbus USB to TCP/IP.
In my case i use it for the velbuslink and my Home Assistant (give it a few minuts ;) ).

# Installation
1. Download the repository
2. run the following commands
3. Have Fun

# Build & run
```bash
#curl https://github.com/jeroends/velserv/blob/master/velserv.c > velserv.c # Curl only if the file is not working.
docker build -t velserv .
docker run -d --restart=always --device="/dev/ttyACM0:/dev/ttyACM0" -p 3788:3788 -t velserv
```
