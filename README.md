# FIXME
* cluster names in services.json (do gen services, or ship a services.json without backend section and jq them in)
* privs - either take a userid to make admin (when doing coredns), or call get-creds after bringing cluster up (can make the cluster with basic and cert auth off?)

### Prereqs

* helm, at least 1.11
* kubectl
* jq
* yq
* golang
* tmux

### Instructions

* Run the `01*.sh` files in order
  * `01z*.sh` will give you a tmux session with a window for each cluster
* Then, for both clusters, run the rest of the files in order
  * Where there are `*-[12].sh` variants, run them in their respective clusters
