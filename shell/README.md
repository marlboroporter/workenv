# Shell Scripts

## find 

* sed on mac
```zsh
❯ find . -type f |xargs sed -i '' -e 's/workenv/w/g'
```
* find files older than 
```bash
find . -type f  \! -newermt "1/14/2023  20:19:00" |xargs rm
```

## shebang

```bash
#!/usr/bin/env -S scala  "$0 $@" 
for ( v <- args) { println (v) }
```

## exa == ls

* [website](http://the.exa.website) 
* [github](https://github.com/ogham/exa)
 
## rg/ripgrep == grep 
* [github](https://github.com/BurntSushi/ripgrep.git) 

## zoxide == cd  
* [github](https://github.com/ajeetdsouza/zoxide) 
* [algo](https://github.com/ajeetdsouza/zoxide/wiki/Algorithm#matching) 

