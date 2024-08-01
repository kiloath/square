mkdir -p /etc/docker
cat >  /etc/docker/daemon.json <<EOF
{
  "features": {
    "containerd-snapshotter": false
  },
  "insecure-registries" : [ "myreg1:5000","myreg2:5000" ]
}
EOF