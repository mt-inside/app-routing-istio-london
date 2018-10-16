source 00-common.sh

set -x
git clone https://github.com/mt-inside/istio.git
pushd istio
git checkout distributed-bookinfo
popd
