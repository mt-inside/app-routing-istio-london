source 00-common.sh

set -x

go get -u github.com/istio-ecosystem/coddiwomple
cd $GOPATH/src/github.com/istio-ecosystem/coddiwomple
make deps
make
