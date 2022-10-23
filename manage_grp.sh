#!/bin/bash


# Message colors

RED="\033[0;31m"
GREEN="\033[0;32m"
YELLOW="\033[0;33m"
NOCOLOR='\033[0m'

# Function to change password for a group
change_passwd() {

    group_name=$1 # Group name passed via argument

    new_passwd=$2 # New password passed via argument

    members=$(members $group_name) # Getting members for group
    echo -e "${YELLOW}INFO: Changing password for group $group_name"
    # Iterate over the list of members
    for user in $members; do
        echo -e "${YELLOW}INFO: Changing password for $user"

        # Change password for user
        echo "$user:$new_passwd" | sudo chpasswd

        # Console message for success or failure
        if [ $? -eq 0 ];
        then
            echo -e "${GREEN}SUCCESS: Password for $user changed"
        else
            echo -e "${RED}FAILURE: Password failed to change for $user"
        fi
    done
}


# Function to delete a group
del_group() {


    group_name=$1 # Group name passed in argument

    echo -e "${YELLOW}INFO: Deleting group $group_name"

    sudo groupdel $group_name

    # Console message for success or failure
    if [ $? -eq 0 ];
    then
        echo -e "${GREEN}SUCCESS: Group deleted: $group_name"
    else
        echo -e "${RED}FAILURE: Failed to delete group: $group_name"
    fi
}

action_arg=$1

if [ -z "$action_arg" ];
then
    echo -e "${RED}INVALID: Please enter an argument"
else
    if [ $action_arg = "-c" ];
    then
        change_passwd $2 $3

    elif [ $action_arg = "-d" ];
    then
        del_group $2
    else
        echo -e "${RED}INVALID: Please enter a valid argument"
    fi
fi

