kubectl cordon k8s-node2; kubectl cordon k8s-node3
kubectl -n kube-system edit cm/kubeadm-config
kubectl -n kube-system edit cm/kube-proxy
kubeadm upgrade plan
kubeadm upgrade diff
kubeadm upgrade apply 1.35.X
kubectl get nodes -o custom-columns='name:.metadata.name,subnet:.spec.podCIDR
kubectl uncordon k8s-node2; kubectl uncordon k8s-node3
kubectl edit -n kube-flannel cm/kube-flannel-cfg
kubectl -n kube-flannel rollout restart ds/kube-flannel-ds
kubectl -n kube-flannel get ds/kube-flannel-ds
