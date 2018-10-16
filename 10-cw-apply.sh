source 00-common.sh

set -x
kubectl create namespace cw
kubectl apply -f <(cw gen --cluster-file clusters.json --service-file services.json --cluster $(yq read $KUBECONFIG 'current-context'))
