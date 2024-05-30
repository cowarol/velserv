# velserv
Velbus USB to TCP/IP


# Build & run
```bash
#curl https://github.com/jeroends/velserv/blob/master/velserv.c > velserv.c
docker build -t velserv .
docker run -d --restart=always --device="/dev/ttyACM0:/dev/ttyACM0" -p 3788:3788 -t velserv
```
