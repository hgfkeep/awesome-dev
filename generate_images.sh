#!/bin/bash
images=(kube-proxy-amd64 kube-scheduler-amd64 kube-controller-manager-amd64 kube-apiserver-amd64 etcd-amd64 coredns pause-amd64 kubernetes-dashboard-amd64 k8s-dns-sidecar-amd64 k8s-dns-kube-dns-amd64 k8s-dns-dnsmasq-nanny-amd64 )

for imageName in ${images[@]} ; do
	mkdir ./images/${imageName}
	echo "FROM k8s.gcr.io/${imageName}:latest\r\nMAINTAINER heguangfu hgfdodo@gmail.com" > ./images/${imageName}/Dockerfile
done
echo "DONE!"
