#!/bin/bash
read -r "Enter file name" : file_name

if [ -f "$file_name" ]; then
 echo "$file_name is exit"
 fi



-----------------------------------------

#!/bin/bash
dir_name=path to dir
if [ -d "$dir_name" ]; then
echo "$dir_name is exits"
fi
