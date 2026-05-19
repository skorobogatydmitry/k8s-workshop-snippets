sudo kubeadm token list
sudo kubeadm token create --print-join-command
kubeadm join k8s-api.local:6443 --token <TOKEN> --discovery-token-ca-cert-hash sha256:<SHA>
