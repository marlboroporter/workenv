setenv(){
cat<<EOF
# default to xcode-select version, may change PATH to use brewed version
export LESS="-F -X $LESS"  # to avoid git over-paging
EOF
}

