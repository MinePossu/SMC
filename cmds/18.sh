#!/bin/bash

# ---
# Set variable(s) to item num.
# ---
source ./f.sh
i3=1
cmdlentemp="${#command[@]}"
while ((i3 < cmdlentemp)); do
	i3="$(($i3+1))"
	process_argument ${command[$(($i3-1))]}
    #setas=""
    #for (( countme=1; countme<=${#argument[@]}-1; countme++ ))
    #do  
    #   setas+=${argument[${countme}]}
    #   #echo ${argument[2]}
    #done

    #echo ${setas} #${#argument[1]} #${command[$(($i3-1))]}
    #exit
	set_var ${argument[0]} ${argument[1]:argument[2]-1:1}
done
