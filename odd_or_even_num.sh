#!/bin/bash
read -p "Enter a number :" num
if [ num % 2 == 0];then
echo "Given $num is even"
else
echo "Given $num is odd"
fi
