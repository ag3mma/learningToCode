#! /bin/bash
# Eighth exercise of the course Shell Scripting on Udemy

INPUTS=$@

for INPUT in $INPUTS
do
    if [ -d "${INPUT}" ]
    then
        echo "The input ${INPUT} is a directory."
        ls -l
    elif [ -f "${INPUT}" ]
    then
        echo "The input ${INPUT} is a regular file."
        ls -l
    elif [ -e "${INPUT}" ]
    then
        echo "The input ${INPUT} file exists."
        ls -l
    else
        echo "File or directory not present, or invalid input."
    fi
done