cat /var/lib/kubelet/config.yaml | grep cgroupDriver
systemd-cgls
ls  -l /etc/kubernetes/manifests
su - k8s-admin -c 'mkdir -p $HOME/.kube'
cp -i /etc/kubernetes/admin.conf /home/k8s-admin/.kube/config
su - k8s-admin -c 'sudo chown $(id -u):$(id -g) /home/k8s-admin/.kube/config'
su - k8s-admin
kubectl get pods --all-namespaces
