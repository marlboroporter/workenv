pkgmgr=brew

. lib/func.sh

cheatsheet=$(cat<<'EOF'
* Show vim setting
  - :set all 
  - :map
* `f`ind/`t`ill char in current line: `fFtT` `;` `c`    
* yank to clipboard:  `"*y`
  - `"` to select register"
  - `*` is system register 
* [option vs variable](https://stackoverflow.com/questions/9990219/vim-whats-the-difference-between-let-and-set)
  - let for variable and set for option
  - &option is variable name for the option
  - :set  tw=40 is same as :let &tw=40
  - `let mapleader` show current leader var value 
  

EOF
)
