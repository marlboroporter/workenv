# Vim env 
## Reference
* [Learn vim the hard way](https://danielmiessler.com/study/vim/) 
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

