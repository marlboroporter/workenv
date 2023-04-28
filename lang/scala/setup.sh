install(){
    #https://get-coursier.io/docs/cli-installation brew install coursier/formulas/coursier }
    brew upgrade coursier/formulas/coursier
}

config(){
    cs update
    cs setup
}

setenv="
# coursier support
export PATH=\$PATH:~/Library/Application\ Support/Coursier/bin
#https://stackoverflow.com/questions/68041159/how-to-run-scala-3-applications-in-the-command-line-with-coursier
alias cs_scala="cs launch scala3-repl:3+ -M dotty.tools.MainGenericRunner -- " 
alias cs_scala_cp="cs launch scala3-repl:3+ -M dotty.tools.MainGenericRunner -- -classpath \
    $(cs fetch --classpath io.circe:circe-generic_3:0.14.1):. "
"

resources(){
   bt__git_clone git@github.com:mertozer94/functional_programming_with_scala.git
   bt__git_clone git@bitbucket.org:jli8000/boundingbox.git scala/evenfinancial
}
