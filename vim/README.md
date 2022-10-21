
<!-- vim-markdown-toc GFM -->

- [Vim distributions](#vim-distributions)
- [Vim Tips](#vim-tips)
- [Vim RE](#vim-re)
  - [* Regex to match spaces that are NOT at the beginning of a line?](#-regex-to-match-spaces-that-are-not-at-the-beginning-of-a-line)
- [SpaceVim](#spacevim)

<!-- vim-markdown-toc -->
# Vim distributions

* Vim 8
* Vim 9
* Nvim
* SpaceVim
* IdeaVim
* VsCode Vim
* vi

# Vim Tips

---
---

* `ftFT` -- `fF`ind `tT`ill keys + `;` + `c`

---

  - [stack overflow](https://stackoverflow.com/questions/12495442/what-do-the-f-and-t-commands-do-in-vim)
* [very magic]()


# Vim RE
* [regex101](https://regex101.com/r/GyxvOQ/1)
* [vim by examples](https://learnbyexample.gitbooks.io/vim-reference/content/Regular_Expressions.html)
* [vim regex - match any number of whitespace at end of line except 2](https://stackoverflow.com/questions/67616933/vim-regex-match-any-number-of-whitespace-at-end-of-line-except-2)  
  ```vim
     :%s/\v(\s)@<!\s(\s{2,})?$//g
  ```
* [Regex to match spaces that are NOT at the beginning of a line?](https://vi.stackexchange.com/questions/7914/regex-to-match-spaces-that-are-not-at-the-beginning-of-a-line) 
---
---

  ```vim
      ┌──────────────── 1.     \v - Using "very magic",
      │              ┌─ 2.  s{2,} - Match two or more spaces,
     ┌┤         ┌────┤
     ││         │    │
  :s/\v(^\s*)@<!\s{2,}/ /g
       │    ││ │
       └────┤└─┤
            │  └─────── 3.    @<! - That do not follow,
            └────────── 4. (^\s*) - The start of the line followed by
                                    any number of spaces.
  ```

---

# SpaceVim
* `"*y` to copy to system clipboard 