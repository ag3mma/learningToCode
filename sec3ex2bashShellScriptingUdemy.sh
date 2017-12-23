#! /bin/bash
# Second exercise of the course Shell Scripting on Udemy

INPUT=$1

if [ -d "${INPUT}" ]
then
    echo "The input ${INPUT} is a directory."
    exit 1
elif [ -f "${INPUT}" ]
then
    echo "The input ${INPUT} is a regular file."
    exit 0
elif [ -e "${INPUT}" ]
then
    echo "The input ${INPUT} file exists."
    exit 2
else
    echo "File or directory not present, or invalid input."
fi
