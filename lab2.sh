#!/bin/bash
echo Hello $USER!
date '+Time: %T%nDate: %d/%m/%y'
h=`date +%H`
if [[ $h -lt 6 ]];
then echo Good night!
elif [[ $h -lt 12 ]];
then echo Good morning!
elif [[ $h -lt 16 ]];
then echo Good afternoon!
else echo Good evening!
fi
grep -w $USER /etc/passwd | cut -d: -f -7 --output-delimiter=$'\n'
