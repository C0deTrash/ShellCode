#!/bin/bash

# This script is for git pull all your current directory github project, but it cannot deal with conflict,
# But when you clone a lot github project to read, this maybe help you git pull batch
# Put this script in your batch pull directory, execute it

# Take the script parent directory path
upgradePath=$(cd `dirname $0`; pwd)
readonly upgradePath

# Upgrade your project
for file in `ls ${upgradePath}`
do
  if test -d ${upgradePath}/${file}
  then
    echo "**** Upgrade ${file} ****"
    cd ${upgradePath}/${file} && git pull
  fi
done
