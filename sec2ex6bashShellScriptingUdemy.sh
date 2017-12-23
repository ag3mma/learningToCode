#! /bin/bash
# Sixth exercise of the course Shell Scripting on Udemy

read -p "Give a name of a file or a directory: " INPUT
if [ -d "${INPUT}" ]
then
    echo "The input is a directory."
    ls -l
elif [ -f "${INPUT}" ]
then
    echo "The input is a regular file."
    ls -l
elif [ -e "${INPUT}" ]
then
    echo "The input file exists."
    ls -l
else
    echo "File or directory not present, or invalid input."
fi