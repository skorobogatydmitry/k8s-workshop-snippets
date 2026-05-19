kubectl -n kube-system edit cm/kubelet-config
serverTLSBootstrap: true
sudo kubeadm upgrade node phase kubelet-config ; sudo systemctl restart kubelet
kubectl get csr
kubectl certificate approve csr-XXXXX
openssl s_client -connect localhost:10250
kubectl -n kube-system rollout restart deploy/metrics-server
kubectl top nodes
