git config --global user.name Kiloath
git config --global user.email Kiloath@example.com
cat >  /etc/docker/daemon.json <<EOF
{
  "features": {
    "containerd-snapshotter": false
  },
  "insecure-registries" : [ "192.168.103.107:5000" ]
}
EOF