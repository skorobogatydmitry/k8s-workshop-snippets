kubectl get namespace
kubectl -n kube-system get deployment -o yaml
kubectl -n kube-system get pod -l k8s-app=kube-dns -o yaml
kubectl -n kube-system get events --sort-by='.lastTimestamp'
kubectl explain node.spec.taints
kubectl get node -o yaml | grep -A4 taints
kubectl -n kube-system get deploy/coredns -o yaml | grep -A4 tolerations
kubectl get node -o yaml | less
