kubectl -n kube-system logs -f etcd-k8s-node2
virsh shutdown k8s-node1
systemctl stop kubelet containerd kubepods.slice
kubectl get nodes
virsh start k8s-node1
systemctl start kubelet containerd
