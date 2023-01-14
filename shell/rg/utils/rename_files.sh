#
 using rg to rename files
#
# files under current dir to be processed
#
#Copy of Videos-Questions (2022-2-2).docx
#Copy of Videos-Questions (2022-2-9).docx
#Copy of Videos-Questions (2022-2-16).docx
#Copy of Videos-Questions (2022-2-23).docx
#Copy of Videos-Questions (2022-3-2).docx
#Copy of Videos-Questions (2022-3-9).docx
#Copy of Videos-Questions (2022-3-23).docx
#Copy of Videos-Questions (2022-3-30).docx
#Copy of Videos-Questions (2022-4-6).docx
#Copy of Videos-Questions (2022-4-20).docx
#Videos-Questions (2022-1-26).docx

rename_script=$(
ls | rg "2022" \
| rg \
--pcre2 \
--multiline \
-r 'mv "$0" "$3$5"' \
"((.*?)(2022-\d-\d)(.*?)(\..*))"      
)

# exe
eval "$rename_script"


## result
#2022-1-2.docx
#2022-2-1.docx
#2022-2-2.docx
#2022-2-9.docx
#2022-3-2.docx
#2022-3-3.docx
#2022-3-9.docx
#2022-4-2.docx
#2022-4-6.docx
