# shell script to rename the files with .py extention to _py2.py

#!/bin/bash

cd /repo
for file in *.py;do
  if [ -f "$file" ];then
     mv "$file" "${file%.py}_py2.py"
  fi
done

  
