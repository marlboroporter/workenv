install(){ echo "$info"; }
reinstall(){ install; }
uninstall(){ echo $info; }
config(){ echo $info; echo "source  ~/.w/app/prof/zshrc" > ~/.zshrc; }
