pkgmgr=brew
install(){
    brew install miniforge 
    brew install micromamba
    # us mamba
    conda install mamba -n base -c conda-forge

}

setenv='
# >>> mamba initialize >>>
# !! Contents within this block are managed by mamba init !!
export MAMBA_EXE="/opt/homebrew/bin/micromamba";
export MAMBA_ROOT_PREFIX="/Users/jieli/micromamba";
__mamba_setup="$("$MAMBA_EXE" shell hook --shell zsh --prefix "$MAMBA_ROOT_PREFIX" 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__mamba_setup"
else
    if [ -f "/Users/jieli/micromamba/etc/profile.d/micromamba.sh" ]; then
        . "/Users/jieli/micromamba/etc/profile.d/micromamba.sh"
    else
        export  PATH="/Users/jieli/micromamba/bin:$PATH"  # extra space after export prevents interference from conda init
    fi
fi
unset __mamba_setup
# <<< mamba initialize <<<
'

tmpenv(){
/opt/homebrew/bin/micromamba shell init -s zsh -p ~/micromamba
}
