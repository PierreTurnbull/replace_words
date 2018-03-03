#!/bin/bash
# 1st argument is the directory in which the research is done
# 2nd argument is the word to be replace
# 3rd word is the word that replaces it

echo "Replacing \"${2}\" with \"${3}\" in directory ${1} and all its subdirectories";
echo "Content modified:";
echo "";
find $1/* -type f -exec sh -c "sed 's/${2}/${3}/g' {}; echo {};" \;

# test: option -i was removed from sed command in order to prevent from any
# modification in the test files. Changes made are shown in the terminal.
