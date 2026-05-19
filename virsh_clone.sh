virsh snapshot-revert --domain k8s-node1 kubeadm-ready; virsh shutdown k8s-node1
virt-clone --original k8s-node1 --name k8s-node2 --file /var/lib/libvirt/images/k8s-node2.qcow
virsh start k8s-node1; virsh start k8s-node2
virsh domifaddr k8s-node1; virsh domifaddr k8s-node2
virsh snapshot-revert --domain k8s-node1 one-node-k8s-cluster
