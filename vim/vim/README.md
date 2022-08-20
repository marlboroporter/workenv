# Vim env 
* coc.nvim has bug on M1
* ❗️Important: Some Vim plugins could change key mappings. Please use command like:verbose imap <tab> to make sure that your keymap has taken effect.
* [How to read all the current in effect mapping](https://stackoverflow.com/questions/7642746/is-there-any-way-to-view-the-currently-mapped-keys-in-vim)
    - display
    ```vim
        :nmap
        :imap
        :vmap
        :help index for built ini
    ```
    - redirect to file
    ```vim
        :redir! > vim_keys.txt
        :silent verbose map
        :redir END
    ```
