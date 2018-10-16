source 00-common.sh

set -x

CORE_DNS_IP="$(kubectl -n istio-system get service coredns -o jsonpath='{.spec.clusterIP}')"
kubectl apply -f <(cat gke-global-stub-domain.yaml | sed "s/CORE_DNS_IP/${CORE_DNS_IP}/")
