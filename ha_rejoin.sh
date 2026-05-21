kubectl cordon k8s-node2
kubectl drain k8s-node2 --ignore-daemonsets --force --delete-emptydir-data
kubeadm reset ; nft flush ruleset ; rm -rf /var/lib/cni /etc/cni/net.d/10-flannel.conflist ; ip link del flannel.1 ; ip link del cni0
sudo kubeadm join k8s-api.local:6443 --token <...> --discovery-token-ca-cert-hash sha256:<...> --control-plane --certificate-key <...>
kubectl taint nodes --all node-role.kubernetes.io/control-plane-
kubectl get csr
kubectl certificate approve csr-<...>
kubectl uncordon k8s-node2
