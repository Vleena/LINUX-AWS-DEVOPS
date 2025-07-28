#!/bin/bash

#######################
# Author:- Vleena
# Description:- You can list the all the users and non-admin user to a given repository
#
#

########################


git_username=$username
git_password=$password
git_Owner=$1
git_repo=$2
git_api="https://api.github.com"


function get_all_user_list {
	curl_request_details=$(curl -s -u $git_username:$git_password $git_api/repos/$git_Owner/$git_repo/collaborators)
	echo "$curl_request_details" | jq '.[].login'
	no_admin_user=$(echo $curl_request_details | jq -r '.[] | select(.permissions.admin == false) | .login')
	echo "non admin users names associated in the $git_Owner/$git_repo Repository:-" $no_admin_user
}

function helper {
	expected_arg=2
        if [ $1 -ne $expected_arg ]; then
                echo "Enter proper two arguments"
		exit 1
        fi
}

helper $#
echo "List of all the users associated in the $git_Owner/$git_repo Repository:-"
get_all_user_list

