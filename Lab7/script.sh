#!/bin/bash

numberOfArguments=$#
address=$1

for counter in $(seq 0 255);
do
    ping -c 1 $address$counter > /dev/null;

[ $? -eq 0 ] && echo "$address$counter UP" || : ; 
done

# counter=0

# echo "$address:" > file1
# while [ $counter -le 255 ]
# do
#     ping $address$counter -c 1 >> file1
#     counter=$(( $counter + 1 ))
# done

exit 0