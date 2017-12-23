#! /bin/bash
# First exercise (and second, condensed) if the course Shell Scripting on Udemy

function file_count() {
    local DIR=$1
    if [ -z "${DIR}" ]
    then
        exit 1
    fi

    local WC=$(ls ${DIR} | wc -l)
    echo "${DIR}:"
    echo -e "\t ${WC}"
}

file_count /etc
file_count /var
file_count /usr/bin