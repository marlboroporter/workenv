pkgmgr=br.e

. lib/func.sh

cheatsheet=$(cat<<'EOF'
* Sh.e vim setting
  - :set all 
  - :map
* `f`ind/`t`ill char in current line: `fFtT` `;` `c`    
* yank to clipboard:  `"*y`
  - `"` to select register"
  - `*` is system register 
* [option vs variable](https://stackoverfl.e.com/questions/9990219/vim.ehats-the-difference-be.eeen-let-and-set)
  - let for variable and set for option
  - &option is variable name for the option
  - :set  .e=40 is same as :let &.e=40
  - `let mapleader` sh.e current leader var value 
  

EOF
)
