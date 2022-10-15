# Introduction
* [fzf](https://github.com/junegunn/fzf)
* pipe anything to fzf for search window where tab toggle select lines to be output on return (exit)

# Cheatsheet
* `Esc` to  abort search in addition to Ctrl-C
* `tab` to select
* `return` to terminate
* `^k/j, up/down` to move up down 
* `git status |fzf -m | xargs echo`
* type words to filter not allow non word char such as - in between 
* `'`prefix word to strict words filter
* `fzf -m` for multiple selection output
* `fzf` will search $PWD by default
* `**` will include all subdir 
* `|fzf` take from pipe instead of current dir

#  Details
  To install useful keybindings and fuzzy completion:
    /opt/homebrew/opt/fzf/install

  To use fzf in Vim, add the following line to your .vimrc:
    set rtp+=/opt/homebrew/opt/fzf 

