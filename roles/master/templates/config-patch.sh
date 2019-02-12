#/bin/bash

while [ ! -f /etc/kubernetes/manifests/kube-apiserver.yaml ]
do
sleep 1
done
sed -i 's/failureThreshold: 8/failureThreshold: 40/g' /etc/kubernetes/manifests/kube-apiserver.yaml && \
sed -i 's/initialDelaySeconds: [0-9]\+/initialDelaySeconds: 400/' /etc/kubernetes/manifests/kube-apiserver.yaml
