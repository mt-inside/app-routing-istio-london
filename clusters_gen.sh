set -o pipefail
set -o errtrace
set -o nounset
shopt -s nullglob
set -o errexit

declare -r file="clusters.json"

echo '[]' > "$file"

for k in kubeconfig-*
do
    name="$(yq read $k 'clusters[0].name')"
    address=$(kubectl --kubeconfig=$k -n istio-system get service istio-ingressgateway -o jsonpath='{.status.loadBalancer.ingress[0].ip}')
    kubeconfig_path="./$k"
    kubeconfig_context="$name"

    jq '. += [{"name": "'$name'", "address": "'$address'", "kubeconfig_path": "'$kubeconfig_path'", "kubeconfig_context": "'$kubeconfig_context'"}]' "$file" > "${file}1"
    mv "${file}1" "$file"
done
