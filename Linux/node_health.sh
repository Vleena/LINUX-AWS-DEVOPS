
##################################
#Author: Vleena
#Description: server health
#Version: V1

##############################
set -x

set -e

set -o pipefail

# get the RAM details of the server
free -h

#exit the script
#tuoch test

#get the cpu count
nproc

#get the disk space
df -h

(echo "the disk space of current working directory" && df -Ph .)


