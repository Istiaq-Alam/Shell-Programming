#!/bin/bash
#ECHO:-
#echo "ECHO COMMAND"
echo "Hello world"

#VARIABLES:-
name="Bob"
echo "Her Name is $name"
#SAME AS-
echo "Her Name is ${name}"

#USER INPUT:-
read -p "Enter Your Name :" name
echo "Hello $name, nice to meet you!"

#SIMPLE IF STATEMENT:-
if [ "$name" == "Brad" ];
then
    echo "Your name is Brad"
fi

#SIMPLE IF-ELSE STATEMENT:-
if [ "$name" == "Brad" ];
then
    echo "Your name is Brad"
else
    echo "Your name is NOT Brad"
fi

#ELSE-IF STATEMENT:-
if [ "$name" == "Brad" ];
then
    echo "Your name is Brad"
elif [ "$name" == "Jack" ];
then
    echo "Your name is Jack"
else
    echo "Your name is not not"
fi

#COMPARISON
num1=31
num2=5
if [ $num1 -gt $num2 ];
then
    echo "$num1 is greater than $num2"
else
    echo "$num1 is less than $num2"
fi

#################################

#File Condition:-
FILE="test.txt"
if [ -e "$FILE" ];
then
    echo "$FILE Exist"
else
    echo "$FILE does not Exist"
fi

#CASE STATEMENT:-
read -p "Are you 21 or over? y/n" ans
case "$ans" in
[yY])
echo "You can have Beer :) "
;;
[nN])
echo "Sorry, no Drinking :( "
;;
*)
echo "Please enter 'y' for YES & 'n' for NO"
;;
esac

#SIMPLE FOR-LOOP STATEMENT
names="Brad Kevin Alice Mark"
for nam in $names
 do
    echo "Hello $nam"
 done

#FOR-LOOP RENAME FILES
FILES=$(ls *.txt)
NEW="NewFile"
for FILE in $FILES
do
echo "Renaming $FILE to new-$FILE"
mv $FILE $NEW-$FILE
done

#WHILE LOOP - READ Through a file line/line
LINE=1
while read -r CURRENT_LINE
do
echo "$LINE: $CURRENT_LINE"
((LINE++))
done <File-test.txt

#FUNCTION STRACTURE
function sayHello(){
echo "Hello world"
}
sayHello

#FUNCTION WITH PERAMETERS
function greet(){
echo "Hello, I am $1 and I am $2"
}
greet "Brad" "36"

#CREATE FOLDER AND WRITE TO A FILE
mkdir Hello
touch "Hello/world.txt"
echo "Hello My beautiful world" >> "Hello/world.txt"
echo "Created Hello/world.txt"
