#!/bin/bash

##
 # Project Globant DevOps Academy
 # This script lists the content of a directory
 # 16/08/2017
 # @author Damian Velazquez Cafaro <damian.velazquez@globant.com>
 #
##

usage="$(basename "$0") [-h] [-p] -- This script lists the content of a directory

where:
    -h  show this help text
    -p  Path to the directory

Example:
    sh listContent.sh -p /tmp/testDir"

LOG_FILE=/tmp/listContent-$(date +%Y-%m-%d\-%H\:%M\:%S).log

function logText() {
	echo "$(date +%Y-%m-%d\ %H\:%M\:%S) - $1" >> ${LOG_FILE}
}

logText "Starting script..."

while getopts :p:h: option
do
        case "${option}" in
            h) echo "$usage"
               exit
               ;;
            p) DIRPATH=${OPTARG}
               ;;
            :) printf "missing argument for -%s\n" "$OPTARG" >&2
               echo "$usage" >&2
               exit 1
               ;;
            \?) printf "illegal option: -%s\n" "$OPTARG" >&2
                 echo "$usage" >&2
                exit 1
                ;;
        esac
done

if [ -z "$DIRPATH"  ]; then
    logText "Missing directory, directory path is mandatory ..."
    echo "$usage"
    exit 1
fi

logText "Listing dir $DIRPATH..."
#echo $( ls -l $DIRPATH)
ls -l "$DIRPATH"

logText "Finishing script..."
