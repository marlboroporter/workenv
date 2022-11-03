# [pandoc ](http://pandoc.org/installing.html)

https://learnbyexample.github.io/customizing-pandoc/* [ABC](https://pandoc.org/getting-started.html)
	* [ABC](https://pandoc.org/getting-started.html)
		* [ABC](https://pandoc.org/getting-started.html)
* [by example](https://learnbyexample.github.io/customizing-pandoc/)
* man pandoc

* converter
	* pandoc README.md -f markdown -t html -s -o readme.html
	* pandoc readme.html -f html -t markdown -s -o readme.md
	* pandoc README.md -f markdown -t latex -s -o readme.tex
	* pandoc README.md -f markdown  -o readme.pdf
	* pandoc -f html -t markdown https://www.cs.cmu.edu/~adamchik/21-127/index.html -o cmu-21-127.1.md
	* pandoc -f html -t markdown --request-header User-Agent:"Mozilla/5.0" -o cmu-21-127.md  https://www.cs.cmu.edu/~adamchik/21-127/index.html 
	* pandoc -f html -t markdown --request-header User-Agent:"Mozilla/5.0" http://www.fsf.org
	* pandoc -f html -t markdown http://www.fsf.org

* pandoc resume
	* cf: ../latex/setenv.sh
	* [ The markdown resume ](https://mszep.github.io/pandoc_resume/)
	* install context from texlive 
	* tlmgr install -reinstall context   

* pandoc manual
    * pandoc  -o  custom-reference.docx --print-default-data-file reference.docx

* simply
    * pandoc  
