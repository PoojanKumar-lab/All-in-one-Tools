#!/bin/bash

set -e

clear

RED='\e[1;31m'
GREEN='\e[1;32m'
YELLOW='\e[1;33m'
BLUE='\e[1;34m'
CYAN='\e[1;36m'
WHITE='\e[1;37m'
ORANGE='\e[1;93m'
NC='\e[0m'

if [[ $EUID -ne 0 ]]; then
   echo -e "${RED}This script must be run as root"
   exit 1
fi

COLOR_NUM=$((RANDOM % 7))
# Assign a color variable based on the random number
case $COLOR_NUM in
    0) COLOR=$RED;;
    1) COLOR=$GREEN;;
    2) COLOR=$YELLOW;;
    3) COLOR=$BLUE;;
    4) COLOR=$CYAN;;
    5) COLOR=$ORANGE;;
    *) COLOR=$WHITE;;
esac
