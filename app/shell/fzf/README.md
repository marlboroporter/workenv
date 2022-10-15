# Introduction
* [fzf](https://github.com/junegunn/fzf)
* pipe anything to fzf for search window where tab toggle select lines to be output on return (exit)

# Cheatsheet
* `Esc` to  abort search in addition to Ctrl-C
* `tab` to select
* `return` to terminate
* `git status |fzf -m | xargs echo`

# Details
  To install useful keybindings and fuzzy completion:
    /opt/homebrew/opt/fzf/install

  To use fzf in Vim, add the following line to your .vimrc:
    set rtp+=/opt/homebrew/opt/fzf 

