curl -LO https://github.com/opencontainers/runc/releases/download/v1.3.5/runc.amd64
  mv runc.amd64 /usr/local/bin/runc
  chmod u+x /usr/local/bin/runc
cd /tmp
  curl -LO https://github.com/containernetworking/plugins/releases/download/v1.9.1/cni-plugins-linux-amd64-v1.9.1.tgz
  mkdir -p /opt/cni/bin
  tar Cxzvf /opt/cni/bin cni-plugins-linux-amd64-v1.9.1.tgz
