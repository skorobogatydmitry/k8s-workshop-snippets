curl -Lo - https://github.com/vmware-tanzu/sonobuoy/releases/download/v0.57.3/sonobuoy_0.57.3_linux_amd64.tar.gz | tar -xzf -
sudo mv sonobuoy /usr/local/bin
sonobuoy run --mode conformance-lite
watch sonobuoy status
sonobuoy results $(sonobuoy retrieve)
