FROM ubuntu:16.04
LABEL MAINTAINER=sawanoboriyu@higanworks.com
LABEL UPSTREAM=https://github.com/currencysolutions/docker-efs-mounter-for-docker-for-aws

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y curl wget nfs-common
RUN wget https://github.com/ContainX/docker-volume-netshare/releases/download/v0.33/docker-volume-netshare_0.33_amd64.deb \
    && dpkg -i docker-volume-netshare_0.31_amd64.deb

ENTRYPOINT ["/usr/bin/docker-volume-netshare", "efs"]
