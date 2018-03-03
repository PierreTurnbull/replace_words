# !/bin/sh
# 1st argument is the directory in which the research is done
# 2nd argument is the word to be replaced
# 3rd word is the word that replaces it

echo "Replacing \"${2}\" with \"${3}\" in directory ${1} and all subdirectories";
echo "Files modified:";
find $1/* -type f -exec sh -c "sed -i 's\\${2}\\${3}\g' {}; echo {}" {} \;
