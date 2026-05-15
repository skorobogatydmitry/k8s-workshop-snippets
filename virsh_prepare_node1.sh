virt-install --name k8s-node1 \
  --memory 2048 --vcpus 2 \
  --disk path=/var/lib/libvirt/images/k8s-node1.qcow,format=qcow2 \
  --cloud-init user-data=src/res/user-data.yml \
  --os-variant rocky10 \
  --import --noautoconsole
watch virsh domifaddr k8s-node1
ssh k8s-admin@<IP>
sudo hostnamectl hostname k8s-node1; sudo dnf install -y nano
reboot; virsh snapshot-create-as --name origin --domain k8s-node1
virsh shutdown k8s-node1; virsh undefine k8s-node1; virsh vol-delete k8s-node1.qcow --pool default
virsh snapshot-revert --domain k8s-node1 origin; virsh start k8s-node1
