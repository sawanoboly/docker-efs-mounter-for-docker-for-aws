
```
docker run --restart=always --privileged -d --name=netshare-efs-for-d4aws -v /var/run/docker/plugins:/var/run/docker/plugins -v /etc/resolv.conf:/etc/resolv.conf -v /var/lib/docker-volumes/netshare/efs:/var/lib/docker-volumes/netshare/efs cursol/netshare-efs-for-d4aws
```

```
"docker run --restart=always -d ",
"--name=netshare-efs-for-d4aws ",
"--privileged ",
"-v /var/run/docker/plugins:/var/run/docker/plugins ",
"-v /etc/resolv.conf:/etc/resolv.conf ",
"-v /var/lib/docker-volumes/netshare/efs:/var/lib/docker-volumes/netshare/efs ",
"cursol/netshare-efs-for-d4aws:latest\n"
```
