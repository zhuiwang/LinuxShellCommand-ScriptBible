#!/bin/bash

shellpath="VM"
echo $shellpath





function recored_path {
    ls $shellpath | grep "VM*" > linux_path.log
    echo "ls $shellpath | grep "VM*" > linux_path.log"
}

function delte_new_file {
    ls $shellpath | grep "VM*" > current_linux_path.log
    local filename=""
    while read line
    do
        #echo $line
        filename=`cat linux_path.log | grep "$line"`
        #echo "filename=$filename"
        #[ ! $filename ] && echo "${shellpath}/${line}"
        [ ! $filename ] && rm -r "${shellpath}/${line}"
        [ ! $filename ] && echo "rm -r "${shellpath}/${line}""

    done < current_linux_path.log
}

PS3="Enter option: "
select option in "Exit Program" "rd path" "delte_new_file"

do
    case $option in
    "Exit Program")
        break ;;

    "rd path")
        recored_path ;;

    "delte_new_file")
        delte_new_file ;;

    *)
        clear
        echo "Sorry error"
    esac
done
clear
