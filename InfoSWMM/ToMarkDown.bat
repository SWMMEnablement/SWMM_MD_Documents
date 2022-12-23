set filename=ICM_Ruby_Exchange.docx
pandoc -s "%filename%" -t gfm -o "%filename%.md" --extract-media="." --self-contained --wrap=none
pause