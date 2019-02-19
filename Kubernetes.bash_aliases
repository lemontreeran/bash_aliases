#Kubernetes
alias kb="kubectl"
### Run kubectl and set the namespace by environment variable
kube () { kubectl --namespace=$KUBECTL_NAMESPACE $@; }