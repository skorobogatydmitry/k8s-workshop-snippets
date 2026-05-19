node3_cni_pod_name=$(kubectl get pods -n kube-flannel --field-selector spec.nodeName=k8s-node3 -o name)
kubectl -n kube-flannel logs -f $node3_cni_pod_name
kubectl get nodes -o custom-columns='name:.metadata.name,subnet:.spec.podCIDR'
