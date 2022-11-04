#!/usr/bin/env bash mac_install(){ brew install sbt

mac_install_coursier(){
    #https://get-coursier.io/docs/cli-installation brew install coursier/formulas/coursier }
    brew install coursier/formulas/coursier
}
repo(){
   bt__git_clone git@github.com:mertozer94/functional_programming_with_scala.git
   bt__git_clone git@bitbucket.org:jli8000/boundingbox.git scala/evenfinancial
}
