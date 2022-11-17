# Syntax
* [PCRE](https://www.pcre.org/)
* [Regular-Expression.info](https://www.regular-expressions.info/) 

# Samples
* extract Syntax part of this file
```
rg --pcre2 --multiline   "(?s)(?<=^# Syntax\n)(.*?)(?=\n#)"
```
