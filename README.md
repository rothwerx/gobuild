# GoBuild
> Packer configuration to make a Docker image for building golang programs

[https://packer.io](Packer) is a great way to build Docker images. This uses Alpine + glibc (needed by Go) from [https://github.com/frol/docker-alpine-glibc](frolvlad/alpine-glibc)

## Usage

Docker is required to be installed on the host in which you build this image, so make sure it's installed, and then install [https://www.packer.io/docs/install/index.html](Packer). 

From there it's a simple `packer build gobuild.json`. Packer should pull down the alpine-glibc image and run the provision script to set up the Go environment.

Within the Docker container, the Go installation will be at /usr/local/go, and the $GOPATH will default to ~/go, so /root/go. Both /usr/local/go/bin and /root/go/bin will be in the $PATH.

Resulting image size is approx 362MB.
