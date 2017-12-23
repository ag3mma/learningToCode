#! /bin/bash
# Fifth exercise of the course Shell Scripting on Udemy

ANIMALS="man bear pig dog cat sheep"
for ANIMAL in ${ANIMALS}
do
    echo "${ANIMAL}"
done