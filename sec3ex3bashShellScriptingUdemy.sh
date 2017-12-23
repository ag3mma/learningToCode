#! /bin/bash
# Third exercise of the course Shell Scripting on Udemy

cat /etc/shadow
if [ "$?" -eq 0 ]
then
    echo "Command succeded."
    exit 0
else
    echo "Command failed."
    exit 1
fi