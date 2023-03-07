# GNU make
* Space & variable
    * when define makefile variable, trailing space can be significant
    * especially whe use the variable with shell commands such as mkdir etc
* linking
    * object files, libs, order is significant. 
    * ealier symbol needs to exists in later objects
    * If recursive, may include libs more than once
    * This is can be different in Mac and Linux
* [include makefile](https://stackoverflow.com/questions/14880419/share-variables-between-makefiles)
     include $(PATHTOSHAREDMAKEFILE)/Makefile.variable
