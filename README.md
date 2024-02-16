# Blog with docker 

```
// 명령어 
sudo docker run -itd ubuntu:22.04
sudo docker build -t unginx:240215 . -f Dockerfile
sudo docker run -d -p 8888:80 unginx:240215

// Dockerfile
FROM ubuntu:22.04

RUN apt update
RUN apt install -y nginx

CMD ["nginx", "-g", "daemon off;"]
```

<br />
