curl -LO https://github.com/flannel-io/flannel/releases/latest/download/kube-flannel.yml
sed -i 's#10.244.0.0/16#172.16.66.0/24#g' kube-flannel.yml
sed -i 's#"EnableNFTables": false#"EnableNFTables": true#g' kube-flannel.yml
sed -Ei 's#"type": "portmap",#\0 "backend": "nftables",#' kube-flannel.yml
dnf install -y nftables ; systemctl status nftables
kubectl apply -f kube-flannel.yml
kubectl edit -n kube-flannel cm/kube-flannel-cfg; rm -rf /var/lib/cni/networks/* ; reboot
kubectl -n kube-flannel get daemonset.apps/kube-flannel-ds
kubectl -n kube-system get deploy/coredns
