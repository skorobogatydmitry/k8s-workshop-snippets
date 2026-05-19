kubeadm reset ; nft flush ruleset ; rm -rf /var/lib/cni /etc/cni/net.d/10-flannel.conflist ; ip link del flannel.1 ; ip link del cni0
