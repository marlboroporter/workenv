# Samples
* "--multiline-dotall" === "(?s)"

```bash
❯ rg --pcre2 --multiline --no-line-number --heading "(?s)(?<=^# Syntax\n)(.*?)(?=\n#)" |while read x; do echo $x; done
pcre/README.md
* [PCRE](https://www.pcre.org/)
* [Regular-Expression.info](https://www.regular-expressions.info/)
❯ rg --pcre2 --multiline  --heading "(?s)(?<=^# Syntax\n)(.*?)(?=\n#)" |while read x; do echo $x; done
```



```bash
rg --pcre2 --multiline --multiline-dotall --no-line-number --heading "(?<=^# Syntax\n)(.*?)(?=\n#)"

```




# Cross References 
* pcre
* regex

