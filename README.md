# ingress-nginx-safeline

[Ingress-nginx](https://kubernetes.github.io/ingress-nginx/) plugin for Chaitin SafeLine Web Application Firewall (WAF). This plugin is used to protect your API from malicious requests. It can be used to block requests that contain malicious content in the request body, query parameters, headers, or URI.

## Installation

#### use docker image

build your own ingress-nginx/controller image with the following Dockerfile
```dockerfile
FROM registry.k8s.io/ingress-nginx/controller:v1.10.1

# install luaroncks
RUN apk update && apt install build-essential libreadline-dev unzip -y

RUN wget https://luarocks.org/releases/luarocks-3.11.0.tar.gz && \
    tar zxpf luarocks-3.11.0.tar.gz && \
    cd luarocks-3.11.0 && \
    ./configure --with-lua-include=/usr/local/include && \
    make && \
    make install

RUN luarocks install ingress-nginx-safeline
```