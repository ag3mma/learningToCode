#! /bin/bash
# Fourth execise of the course Shell Scripting on Udemy

if [ -e /etc/shadow ]
    then
        echo "Shadow password enabled."
fi

if [ -w /etc/shadow ]
    then
        echo "You have permission to write /etc/shadow."
else
        echo "You do NOT have permission to write /etc/shadow."
fi