FROM ubuntu:16.04
MAINTAINER sawanoboriyu@higanworks.com

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y curl wget nfs-common
RUN wget https://github.com/ContainX/docker-volume-netshare/releases/download/v0.17/docker-volume-netshare_0.17_amd64.deb \
    && dpkg -i docker-volume-netshare_0.17_amd64.deb

ENTRYPOINT ["/usr/bin/docker-volume-netshare", "efs"]
