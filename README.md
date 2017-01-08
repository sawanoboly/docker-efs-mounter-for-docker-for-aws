Run it manually

```
docker run --restart=always --privileged -d --name=netshare-efs-for-d4aws -v /var/run/docker/plugins:/var/run/docker/plugins -v /etc/resolv.conf:/etc/resolv.conf -v /var/lib/docker-volumes/netshare/efs:/var/lib/docker-volumes/netshare/efs sawanoboly/netshare-efs-for-d4aws:0.31
```

or add to the end of UserData for both manager and worker in CloudFormation template

```
"mkdir -p /var/lib/docker-volumes/netshare/efs\n",
"mount --bind /var/lib/docker-volumes/netshare/efs /var/lib/docker-volumes/netshare/efs\n",
"mount --make-shared /var/lib/docker-volumes/netshare/efs\n",
"docker run --restart=always -d\n",
"--name=netshare-efs-for-d4aws\n",
"--privileged\n",
"-v /var/run/docker/plugins:/var/run/docker/plugins\n",
"-v /etc/resolv.conf:/etc/resolv.conf\n",
"-v /var/lib/docker-volumes/netshare/efs:/var/lib/docker-volumes/netshare/efs:shared\n",
"sawanoboly/netshare-efs-for-d4aws:0.31\n"
```
