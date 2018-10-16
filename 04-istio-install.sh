source 00-common.sh

set -x
helm install \
    --wait \
    --name istio \
    --namespace istio-system \
    istio-*/install/kubernetes/helm/istio
kubectl label namespace default istio-injection=enabled
