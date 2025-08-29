#!/bin/bash


############################
#Author: Vleena
#Description:
#Version: V1
###########################

set -e

#GitHub username and personal access token
USERNAME=$username
TOKEN=$token

#User and Repository information
REPO_OWNER=$1
REPO_NAME=$2

#Github API
API_URL="https://api.github.com"

function list_users_with_read_access {
 local endpoint="${API_URL}/repos/${REPO_OWNER}/${REPO_NAME}/collaborators"
 auth="${USERNAME}:${TOKEN}"
 collaborators=$(curl -s -u "$auth" "$endpoint")
 read_access_user=$(echo "$collaborators" | jq -r '.[ ] | select(.permissions.pull == true) | .login')
 if [[ -z "$read_access_user" ]]; then
	echo "No users has read access to the $REPO_OWNER/$REPO_NAME repository"
 else
	echo "users having read access to the $REPO_OWNER/$REPO_NAME repository"
	echo "$read_access_user"
fi
}

echo "Listing users with read access of ${REPO_OWNER}/${REPO_NAME}:"
list_users_with_read_access
