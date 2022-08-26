wapp=${PWD##/*/}

# brew 
woption=""
#woption="--ignoredependencies"

# sdk 
# yarn
# others

# msg
winfo="
#------ ${wapp} ------"
# concatenate
winfo(){ echo "$winfo$1"; } 

# op 
install(){ winfo; } 
reinstall(){ winfo; } 
uninstall(){ winfo; } 
config(){ winfo;}
# env 
wrc=~/.customrc
wenv="" # to be define by child
setenv(){ winfo "$wenv">>$wrc; eval "$wenv";  }
