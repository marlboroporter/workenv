pkgmgr=brew
wcheatsheet=$(cat<<'EOF'
  kind create cluster --name kind-baeldung-kind
  kubectl cluster-info --context oak-kind


EOF
)

tutorial(){
  D=~/dev/kind/tutorial/
  L=tutorial
  mkdir -p $D
  rm $L 
  ln -s $D  $L 

  kind create cluster --name baeldung-kind
  kubectl cluster-info --context kind-baeldung-kind

  cat>$L/oakConfig.yaml<<EOF
  kind: Cluster
  apiVersion: kind.x-k8s.io/v1alpha4
  name: oak-kind
EOF

  kind create cluster --config $L/oakConfig.yaml 
  kubectl cluster-info --context kind-oak-kind
  
}


