#! /bin/bash
# this is a comment. Variables are just a pair of VARIABLE_NAME="Value".
# variables can be used with the $VARIABLE_NAME or ${VARIABLE_NAME}
# Tests are condition to test for. Syntax: test [ condition-to-test-for ]
# help test
#  Exits with a status of 0 (true) or 1 (false) depending on
#   the evaluation of EXPR.  Expressions may be unary or binary.  Unary
#   expressions are often used to examine the status of a file.  There
#   are string operators as well, and numeric comparison operators. 
# If statement:
# if [ condition-is-true ]
# then
# ...commands
# fi

MY_NAME="Andrea"
USERNAME=$(whoami) #$(command) evaluate the inserted command
echo "Hello ${MY_NAME}, you're ${USERNAME} user here!!"
if [ "${MY_NAME}" = "Andrea" ]
then
    echo "Hello again Andrea!"
# else
# [commands]...

# or

# elif
# [commands]...
# then
# else
# [commands]...
fi

for COLOR in "red" "green" "blue"
do
    echo "Color: ${COLOR}"
done

COLORS="violet gray purple"

for COLOR in ${COLORS}
do 
    echo "More color: ${COLOR}"
done

# Positional parameters are the parameters passed to the script
# $0 is the name of the script
# $1 is the first parameter (as in ./my_script.sh first_parameter)
# $2 $3 are the second and third, and so on.
# The variable $@ contains all the parameters. So it is a good 
# candidate to the construct - for VARIABLE in $@.
# $? contains the return code/exit status of the previous command executed
# Accepting input from STDIN
# read -p "PROMPT_TO_DISPLAY" VARIABLE_IN_WHICH_THE_INPUT_IS_STORED
read -p "Give another name to cheer: " ALTNAME
echo "Hello also to you ${ALTNAME}"

# Exit status 0 = command correctly executed, otherwise the number of the exit status can behave 
# as a more detailed message for the failed executed command.
# Logical operators && (AND), || (OR) can be used between commands.
# Ex: command1 && command2, command2 is executed only if command1 succed (return a zero status)
# Ex: command1 || command2, command2 is executed only if command1 fails (return a non zero status)
# A script can return a specific exit status with the 'exit x' syntax, otherwise the exit status
# of a script is the one of the last command executed.
# help source:
# source filename [arguments]
#     Read and execute commands from FILENAME and return.  The pathnames
#     in $PATH are used to find the directory containing FILENAME.  If any
#     ARGUMENTS are supplied, they become the positional parameters when
#     FILENAME is executed.

# Function declaration:
# function name_of_the_function() {
#    
# }
# name_of_the_function() {
#    
# }
# Function call:
# name_of_the_function ## Call a function is JUST call the name, without the parenthesis!
# You can't call a function BEFORE it's declared!
function hello() {
    echo "Hello function"
    uptime # another call of a function
}
hello
# You can supply function arguments after the function call, and retrieve with $1, $2 and so on
# $@ will contain ALL the arguments
function tryMe() {
    for ARGUMENT in $@
    do
        echo "I've tried the function tryMe with the argument ${ARGUMENT}"
    done
}
tryMe Whakalala Hubba Lubba
echo ARGUMENT #the variable inside a loop is local to function. This only print "ARGUMENT"
# Like functions, variables have to be declared before used. They have a global scope.
# Variables in a function, once declared, have global scope after the function is called.
# my_function() {
#    MY_GLOBAL_VAR=1
# }
# MY_GLOBAL_VAR not available yet.
# my_function
# MY_GLOBAL_VAR is now available!!
# If you want a variable to be local a function you declare it with 'local' keyword, it's
# best practice to have function variables local.
# my_function() {
#    local MY_LOCAL_VAR=2
# }