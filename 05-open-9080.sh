source 00-common.sh

set -x

helm upgrade \
    --reuse-values \
    -f port-9080.yaml \
    istio \
    istio-*/install/kubernetes/helm/istio
