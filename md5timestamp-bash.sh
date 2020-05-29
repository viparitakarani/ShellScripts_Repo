#!/bin/bash

apikey=$1
secret=$2
timestamp=$(($(date +'%s * 1000 + %-N / 1000000')))
echo  "${timestamp}"

divs=1000
timestampms=$(( timestamp / divs ))

echo "${timestampms}"

round() {
  printf "%.${2}f" "${1}"
}


rtimestamp=$(round ${timestampms} 0)


echo  "${rtimestamp}"

echo  "${apikey}"
echo  "${secret}"

str="${apikey}${secret}${rtimestamp}"
echo "${str}"

md5 <<< "${str}"