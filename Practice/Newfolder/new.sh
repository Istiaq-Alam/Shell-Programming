#!/bin/bash
echo "What is your name..??"
read name
echo "What is your age..??"
read age

if [ $age -le 18 ]; then
echo "Awww $name !! you are not adult..!"
echo "You are just $age"
elif [ $age -ge 18 ]; then
echo "Great $name !! You are an adult person..!"
echo "You are just $age"
else
echo "You are an Alien..!! $name"
fi

echo
echo "Want to you Loop Statement..? 1/0"
read y
if [ $y -eq 1 ]; then
echo "Loop Start"
for i in 1 2 3 4 5 6 7 8 9 10
 do
 echo "I = $i"
done
else
echo "Programe Terminate"
fi
