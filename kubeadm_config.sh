cat <<EOF > config.yaml
apiVersion: kubeadm.k8s.io/v1beta4
kind: ClusterConfiguration
controlPlaneEndpoint: k8s-api.local
networking:
  podSubnet: 172.16.66.0/24
---
apiVersion: kubeproxy.config.k8s.io/v1alpha1
kind: KubeProxyConfiguration
mode: nftables
EOF
kubeadm init --config config.yaml
