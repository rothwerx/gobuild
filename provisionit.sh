#!/bin/sh

apk update
apk add bash
apk add curl
apk add git
apk add rpm-dev

curl https://storage.googleapis.com/golang/go1.9.2.linux-amd64.tar.gz | tar -C /usr/local -xz

# If $GOPATH isn't specified, Go will use ~/go
echo "export PATH=$PATH:/usr/local/go/bin:~/go/bin" >> ~/.bashrc
