#!/usr/bin/env bash
os=$(uname -o)
case $os in
  Darwin)
    ;;
  *)
    ;;
esac

mac_install(){
    brew reinstall apache-spark
}

mac_uninstall(){
    brew uninstall apache-spark
}
