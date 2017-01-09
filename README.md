
https://hub.docker.com/r/sawanoboly/docker-efs-mounter-for-docker-for-aws/

Run it manually

```
docker run --restart=always --privileged -d --name=netshare-efs-for-d4aws \
  -v /var/run/docker/plugins:/var/run/docker/plugins \
  -v /etc/resolv.conf:/etc/resolv.conf \
  -v /var/lib/docker-volumes/netshare/efs:/var/lib/docker-volumes/netshare/efs \
  sawanoboly/docker-efs-mounter-for-docker-for-aws:0.33-2
```

or add to the end of UserData for both manager and worker in CloudFormation template

```
"mkdir -p /var/lib/docker-volumes/netshare/efs\n",
"mount --bind /var/lib/docker-volumes/netshare/efs /var/lib/docker-volumes/netshare/efs\n",
"mount --make-shared /var/lib/docker-volumes/netshare/efs\n",
"docker run --restart=always -d ",
"--name=netshare-efs-for-d4aws ",
"--privileged ",
"-v /var/run/docker/plugins:/var/run/docker/plugins ",
"-v /etc/resolv.conf:/etc/resolv.conf ",
"-v /var/lib/docker-volumes/netshare/efs:/var/lib/docker-volumes/netshare/efs:shared ",
"sawanoboly/docker-efs-mounter-for-docker-for-aws:0.33-2\n"
```
