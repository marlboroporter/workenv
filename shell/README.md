## 
* sed on mac
```zsh
❯ find . -type f |xargs sed -i '' -e 's/workenv/w/g'
```
* find files older than 
```bash
find . -type f  \! -newermt "1/14/2023  20:19:00" |xargs rm
```

