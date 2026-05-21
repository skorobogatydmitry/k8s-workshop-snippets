sudo kubeadm init phase upload-certs --upload-certs
sudo kubeadm token create --print-join-command --certificate-key <cert key from the previous command>
