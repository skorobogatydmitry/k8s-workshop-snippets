cat /var/lib/kubelet/config.yaml | grep cgroupDriver
systemd-cgls
ls  -l /etc/kubernetes/manifests
su - k8s-admin -c 'mkdir -p $HOME/.kube'
su - k8s-admin -c 'sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config'
su - k8s-admin -c 'sudo chown $(id -u):$(id -g) $HOME/.kube/config'
su - k8s-admin -c 'kubectl get pods --all-namespaces'
