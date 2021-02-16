#!/bin/bash

# Objectives:
# [x] Write a Bash script that prints the login history of users on this computer.
# [x] Your script must use at least one function and one variable.
# [x] Include a function that accepts a parameter and uses it.


function log_history () {
    log_count_display=$command last -"$1"
    echo $log_count_display
}

function log_history_all () {
    log_count_all=command last
    echo $log_count
}

echo "How many log entries would you like to print? [Type a number or 'all']:" 
read entries

#Another way to write this to be more secure could be:
#read -p "How many log entries would you like to print?" entries
#For my later reference: -p option is related to security. It prevents the shell reading user-controlled files.

if [ $entries == 'all' ] || [ $entries == 'All' ]
then
    log_history_all
else
    eval "log_history $entries"
fi



























