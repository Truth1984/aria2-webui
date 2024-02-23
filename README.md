# WebUI-Aria2

The aim for this project is to create the worlds best and hottest interface to interact with aria2. aria2 is the worlds best file downloader, but sometimes the command line brings more power than necessary. The project was initially created as part of the GSOC scheme, however it has rapidly grown and changed with tremendous support and feedback from the aria2 community.

Very simple to use, no build scripts, no installation scripts. First start aria2 in the background either in your local machine or in a remote one. You can do that as follows:

```bash
aria2c --enable-rpc --rpc-listen-all
```

If aria2 is not installed in your local machine then head on to https://aria2.github.io/ and follow the instructions there.

Use NodeJS to create simple server by using the following command from the project folder.

```bash
node node-server.js
```

If you are encountering rpc error, modify your rpc address accordingly. This project is built for docker.

# Dependencies

Well, you need aria2. And a web browser (if that even counts!)

# New feature

1. Single port exposure

2. Updated node version and dependency

3. No extra unnecessary packages for web

# Configure and Endpoint

init bash

`mkdir conf && touch conf/aria2.conf`

docker-compose.yml example:

```yaml
version: "3.8"
services:
  aria2w:
    container_name: truth1984/aria2w
    restart: unless-stopped

  aria2:
    image: truth1984/aria2
    container_name: aria2
    volumes:
      - ./config:/root/.aria2
      - ./download:/root/download
    restart: unless-stopped
    # modify following by your need
    command: aria2c --enable-rpc --rpc-listen-all --conf-path=/root/.aria2/aria2.conf --dir=/root/download

  nginx:
    image: nginx:alpine
    container_name: nginx-aria
    volumes:
      - ./nginx.conf:/etc/nginx/conf.d/aria2.conf
    ports:
      - 8000:8000
    restart: unless-stopped
```

nginx.conf example:

```nginx
server {
  listen 8000;

  location / {
    proxy_pass http://aria2w:8000;
  }

  location /jsonrpc {
    proxy_pass http://aria2:6800/jsonrpc;
  }
}
```

# project forked from

`https://github.com/ziahamza/webui-aria2.git`

# License

Refer to the LICENSE file (MIT License). If the more liberal license is needed then add it as an issue
