cd /tmp
  curl -LO https://github.com/containerd/containerd/releases/download/v2.2.2/containerd-2.2.2-linux-amd64.tar.gz
  tar Cxzvf /usr/local containerd-2.2.2-linux-amd64.tar.gz
  curl -LO https://raw.githubusercontent.com/containerd/containerd/main/containerd.service
  chmod 644 containerd.service
  mv containerd.service /etc/systemd/system
  /sbin/restorecon -v /etc/systemd/system/containerd.service
  systemctl daemon-reload
  mkdir /etc/containerd
  containerd config default > /etc/containerd/config.toml
  sed -Ei 's#SystemdCgroup = .+$#SystemdCgroup = true#' /etc/containerd/config.toml
  systemctl enable --now containerd
