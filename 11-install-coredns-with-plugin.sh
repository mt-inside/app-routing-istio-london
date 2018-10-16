source 00-common.sh

set -x
kubectl create clusterrolebinding mt-admin --clusterrole cluster-admin --user matt@tetrate.io

# have to use patched version of istio-coredns-plugin/coredns.yaml to add the --default-address argument
kubectl apply -f coredns-mt.yaml
