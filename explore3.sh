kubectl get nodes
pstree
ctr namespace list
ctr --namespace k8s.io containers list
kubectl get pods --all-namespaces --field-selector spec.nodeName=k8s-node3
