#!/bin/bash
#ECHO COMMAND WILL PRINT THIS IN TERMINAL

echo "
██╗      █████╗ ██████╗ ████████╗ █████╗ ███████╗██╗  ██╗     ███████╗
██║     ██╔══██╗██╔══██╗╚══██╔══╝██╔══██╗██╔════╝██║ ██╔╝     ██╔════╝
██║     ███████║██████╔╝   ██║   ███████║███████╗█████╔╝█████╗███████╗
██║     ██╔══██║██╔══██╗   ██║   ██╔══██║╚════██║██╔═██╗╚════╝╚════██║
███████╗██║  ██║██████╔╝   ██║   ██║  ██║███████║██║  ██╗     ███████║
╚══════╝╚═╝  ╚═╝╚═════╝    ╚═╝   ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝     ╚══════╝
"
echo ""
printf "\t\t\tOperating System Lab\n"
printf "\t\tLab Task-05 | Shell Programming Topics:\n"
printf "by Istiak Alam\n\n"

#SELECT PROCESS TO EXECUTE
echo "Which Process you want to Execute..??"
echo "1. Variables"
echo "2. User Inputed Variables"
echo "3. If Statement"
echo "4. If-Else Statement"
echo "5. Else-If Statement"
echo "6. Comparison using if-else"
echo "7. File Condition"
echo "8. Case Statement"
echo "9. For-Loop Statement"
echo "10. For-Loop Rename Files"
echo "11. Until-Loop Statement"
echo "12. Function Structure"
echo "13. Funtion With Perameter"
echo "14. Create Folder and write to a file"
echo "15. Array & Associative Array"
echo ""

function labTask(){
echo ""
read -p "Enter your Lab Topic choice (1-15) : " ans
echo ""
case $ans in
1)
echo "1. String Variable : (suppose -city- is a variable)"
printf "In Shell Code:-\n\n"
echo "city=Dhaka"
echo 'echo "I live in $city"'
echo ""
echo "Output:-"
city="Dhaka"
echo "I live in $city"
#SAME AS-
echo "${city} is the capital of Bangladesh."
labTask
;;
2)
printf "\t\t\t2. USER INPUT:-\n"
printf "In Shell Code:\n\n"
echo 'read -p "Enter Your Name : " name'
echo 'echo "Hello $name, nice to meet you!"'
echo ""
echo "Output:-"
read -p "Enter Your Name : " name
echo "Hello $name, nice to meet you!"
labTask
;;
3)
printf "\t\t\t3. If Statement :\n"
echo "if name is Brad thn the if will execute."
printf "In Shell Code:\n\n"
echo 'read -p "Enter your name : " name
if [ "$name" == "Brad" ];
then
    echo "Your name is Brad"
fi'
echo ""
echo "Output:-"
read -p "Enter your name : " name
if [ "$name" == "Brad" ];
then
    echo "Your name is Brad."
fi
labTask
;;
4)
printf "\t\t\t4. If-Else Statement :\n"
printf "In Shell Code:\n\n"
echo 'read -p "Enter a name, Brad or anything : " name
if [ "$name" == "Brad" ];
then
    echo "Your name is Brad"
else
    echo "Your name is NOT Brad"
fi'
printf "\nOutput:-\n"
read -p "Enter a name, Brad or anything : " name
if [ "$name" == "Brad" ];
then
    echo "Your name is Brad"
else
    echo "Your name is NOT Brad"
fi
labTask
;;
5)
printf "\t\t\t5. Else-If Statement :\n"
printf "In Shell Code:\n\n"
echo 'read -p "Enter a name, Brad / Jack or anything : " name
if [ "$name" == "Brad" ];
then
    echo "Your name is Brad."
elif [ "$name" == "Jack" ];
then
    echo "Your name is Jack."
else
    echo "Your name is nothing."
fi'
printf "\nOutput:-\n"
read -p "Enter a name, Brad / Jack or anything : " name
if [ "$name" == "Brad" ];
then
    echo "Your name is Brad."
elif [ "$name" == "Jack" ];
then
    echo "Your name is Jack."
else
    echo "Your name is nothing."
fi
labTask
;;
6)
printf "\t\t\t6. Comparison :\n"
printf "In Shell Code:\n\n"
echo 'read -p "Enter 1st Number : " num1
read -p "Enter 2nd Number : " num2
if [ $num1 -gt $num2 ];
then
    echo "$num1 is greater than $num2"
else
    echo "$num1 is less than $num2"
fi'
echo ""
echo "Output:-"
read -p "Enter 1st Number : " num1
read -p "Enter 2nd Number : " num2
if [ $num1 -gt $num2 ];
then
    echo "$num1 is greater than $num2"
else
    echo "$num1 is less than $num2"
fi
labTask
;;
7)
printf "\t\t\t7. File Condition :\n"
printf "Checking if the file is exist or not.\n\n"
printf "In Shell Code:\n\n"
echo 'FILE="test.txt"
if [ -e "$FILE" ];
then
    echo "$FILE Exist"
else
    echo "$FILE does not Exist"
    echo "You have to Create $FILE Manually"
fi'
echo ""
echo "Output:-"
FILE="test.txt"
if [ -e "$FILE" ];
then
    echo "$FILE Exist"
else
    echo "$FILE does not Exist"
    echo "You have to Create $FILE Manually"
fi
labTask
;;
8)
printf "\t\t\t8. Case Statement :\n"
printf "In Shell Code:-\n\n"
echo 'read -p "Are you 21 or over? y/n : " ans
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
esac'
echo ""
echo "Output:-"
read -p "Are you 21 or over? y/n : " ans
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
labTask
;;
9)
printf "\t\t\t9. For-Loop Statement :\n"
printf "\nIn Shell Code:\n\n"
echo 'echo "Lets Print a Pyramid"
read -p "Enter the number of rows: " rows
#Loop to print the pyramid
for (( i=1; i<=rows; i++ ))
do
    #Print spaces before stars
    for (( j=i; j<rows; j++ ))
    do
        echo -n " "
    done
    #Print stars
    for (( j=1; j<=(2*i-1); j++ ))
    do
        echo -n "*"
    done
    # Move to the next line
    echo
done'
echo ""
echo "Output:-"
echo "Lets Print a Pyramid"
read -p "Enter the number of rows: " rows
# Loop to print the pyramid
for (( i=1; i<=rows; i++ ))
do
    # Print spaces before stars
    for (( j=i; j<rows; j++ ))
    do
        echo -n " "
    done
    # Print stars
    for (( j=1; j<=(2*i-1); j++ ))
    do
        echo -n "*"
    done
    # Move to the next line
    echo
done
labTask
;;
10)
printf "\t\t\t10. For-Loop RENAME FILES :\n"
printf "\nIn Shell Code:\n\n"
echo 'FILES=$(ls *.txt)
NEW="NewFile"
for FILE in $FILES
do
echo "Renaming $FILE to new-$FILE"
mv $FILE $NEW-$FILE
done'
printf "\nOutput:-\n"
FILES=$(ls *.txt)
NEW="NewFile"
if [ -e "$FILES" ];
then {
for FILE in $FILES
do
echo "Renaming $FILE to new-$FILE"
mv $FILE $NEW-$FILE
done
}
else
    echo "File $FILE does not Exist"
    echo "You have to Create this $FILE Manually"
fi
labTask
;;
11)
printf "\t\t\t11. Until Loop Statement :\n"
printf "\nIn Shell Code:\n\n"
echo 'count=5
until [ $count -le 0 ]
do
   echo "Countdown: $count"
   ((count--))
done'
printf "\nOutput:-\n"
count=5
until [ $count -le 0 ]
do
   echo "Countdown: $count"
   ((count--))
done
labTask
;;
12)
printf "\t\t\t12. Function Structure :\n"
printf "\nIn Shell Code:\n\n"
#FUNCTION STRUCTURE
echo 'function sayHello(){
echo "Function Executed"
}
sayHello'
printf "\nOutput:-\n"
function sayHello(){
echo "Function Executed"
}
sayHello
labTask
;;
13)
printf "\t\t\t13. Function with Perameter :\n"
printf "\nIn Shell Code:\n\n"
echo 'function greet(){
echo "Hello, I am $1 and I am $2"
}
greet "Brad" "36"'
printf "\nOutput:-\n"
#FUNCTION WITH PERAMETERS
function greet(){
echo "Hello, I am $1 and I am $2"
}
greet "Brad" "36"
labTask
;;
14)
printf "\t\t\t14. Creating Folder and Writting to a File :"
printf "\nIn Shell Code:\n\n"
echo 'mkdir Hello
touch "Hello/world.txt"
echo "Hello My beautiful world" >> "Hello/world.txt"
echo "Created Hello/world.txt"'
printf "\nOutput:-\n"
#CREATE FOLDER AND WRITE TO A FILE
mkdir Hello
touch "Hello/world.txt"
echo "Hello My beautiful world" >> "Hello/world.txt"
echo "Created Hello/world.txt"
labTask
;;
15)
#SELECT ARRAY PROCESS TO EXECUTE
printf "\t\t\t15. Array Structure\n"
echo "1. Array Declaration"
echo "2. Adding Element into Array"
echo "3. Accessing Array Elements"
echo "4. Accessing All Elements"
echo "5. Array Length"
echo "6. Looping Through Array"
echo "7. Update Array Element"
echo "8. Insert New Element"
echo "9. Delete Array Element"
echo "10. Delete Entire Array"
echo "11. Declaring Associative Array"
echo "12. Accessing Value by key"
echo "13. Looping Through Key Value"
echo "14. Deleting From key"
echo "15. Display all key & Values"
printf "\tPress 0 to go Back"
echo ""

function Array(){
echo ""
fruits[0]="Apple"
fruits[1]="Banana"
fruits[2]="Cherry"
fruits[3]="Berry"
read -p "Enter your Array Topic choice (1-15) : " ans
echo ""
case $ans in
0)
echo "Back To main Menu"
echo ""
echo "Which Process you want to Execute..??"
echo "1. Variables"
echo "2. User Inputed Variables"
echo "3. If Statement"
echo "4. If-Else Statement"
echo "5. Else-If Statement"
echo "6. Comparison using if-else"
echo "7. File Condition"
echo "8. Case Statement"
echo "9. For-Loop Statement"
echo "10. For-Loop Rename Files"
echo "11. Until-Loop Statement"
echo "12. Function Structure"
echo "13. Funtion With Perameter"
echo "14. Create Folder and write to a file"
echo "15. Array & Associative Array"
echo ""
labTask
;;
1)
printf "\t\t\t1. Array Declaration\n"
printf "In Shell Code:-\n\n"
echo 'fruits=("apple" "banana" "cherry")'
echo 'echo "Array of fruits : ${fruits[*]}"'
printf "\nOutput:-\n"
fruits=("apple" "banana" "cherry")
echo "Array of fruits : ${fruits[*]}"
echo ""
Array
;;
2)
printf "\t\t\t2. Adding Elements\n"
printf "In Shell Code:-\n\n"
echo 'fruits[0]="Apple"
fruits[1]="Banana"
fruits[2]="Cherry"
fruits[3]="Berry"
echo "Array of fruits : ${fruits[*]}"'
printf "\nOutput:-\n"
fruits[0]="Apple"
fruits[1]="Banana"
fruits[2]="Cherry"
fruits[3]="Berry"
echo "Array of fruits : ${fruits[*]}"
echo ""
Array;;
3)
printf "\t\t\t3. Accessing Array Elements\n"
printf "In Shell Code:-\n\n"
echo '
fruits[0]="Apple"
fruits[1]="Banana"
fruits[2]="Cherry"
fruits[3]="Berry"

#We can Access them as-
${fruits[0]}   # Output: Apple
${fruits[1]}   # Output: Banana
${fruits[2]}   # Output: Cherry
${fruits[3]}   # Output: Berry'
printf "\nOutput:-\n"
fruits[0]="Apple"
fruits[1]="Banana"
fruits[2]="Cherry"
fruits[3]="Berry"
echo "fruits[0] : ${fruits[0]}"
echo "fruits[1] : ${fruits[1]}"
echo "fruits[2] : ${fruits[2]}"
echo "fruits[3] : ${fruits[3]}"
echo ""
Array;;
4)
printf "\t\t\t4. Accessing All Elements \n"
printf "In Shell Code:-\n\n"
echo '
fruits[0]="Apple"
fruits[1]="Banana"
fruits[2]="Cherry"
fruits[3]="Berry"

echo ${fruits[@]} #OR
echo ${fruits[*]} #SAME'
printf "\nOutput:-\n"
echo ${fruits[@]}   # Output: apple banana cherry
echo ${fruits[*]}
echo ""
Array;;
5)
printf "\t\t\t5. Array Length\n"
printf "In Shell Code:-\n\n"
echo 'echo "Size of fruits array : ${#fruits[*]}"'
printf "\nOutput:-\n"
echo "Size of fruits array : ${#fruits[*]}"
echo ""
Array;;
6)
printf "\t\t\t6. Looping Through Array\n"
printf "In Shell Code:-\n\n"
echo 'for fruits in ${fruits[*]}
    do
        echo "$fruits"
    done'
printf "\nOutput:-\n"
for fruits in ${fruits[*]}
do
echo "$fruits"
done
echo ""
Array;;
7)
printf "\t\t\t7. Update Array Element\n"
printf "In Shell Code:-\n\n"
echo 'fruits[1]="blueberry"
echo "Updated Array ${fruits[*]}"  # Output: apple blueberry cherry'
printf "\nOutput:-\n"
fruits[1]="blueberry"
echo "Updated Array : ${fruits[*]}"  # Output: apple blueberry cherry
echo ""
Array;;
8)
printf "\t\t\t8. Insert New Element\n"
printf "In Shell Code:-\n\n"
echo 'fruits+=($newElement) #OR
fruits+=("date")
echo ${fruits[*]}'
printf "\nOutput:-\n"
read -p "Enter New Element : " nw
fruits+=($nw)
echo ${fruits[*]}
echo ""
Array;;
9)
printf "\t\t\t9. Delete Array Element\n"
printf "In Shell Code:-\n\n"
echo 'unset fruits[1]
echo ${fruits[*]}
'
printf "\nOutput:-\n"
echo "Array Elements : ${fruits[*]}"
echo "After Deleting fruits[1]"
unset fruits[1]
echo "Remaining Elements : ${fruits[*]}"
echo ""
Array;;
10)
printf "\t\t\t10. Delete Entire Array\n"
printf "In Shell Code:-\n\n"
echo 'unset fruits'
printf "\nOutput:-\n"
echo "Before Deleting Array : ${fruits[*]}"
echo "After Deleting Array :"
unset fruits
echo "array : ${fruits[*]}"
echo ""
Array;;
11)
printf "\t\t\t11. Declaring Associative Array\n"
printf "In Shell Code:-\n\n"
echo 'declare -A person
person[name]="Alice"
person[age]=25
person[city]="New York"
'
printf "\nOutput:-\n"
declare -A person
person[name]="Alice"
person[age]=25
person[city]="New York"
echo ""
echo "Person Array Elements : ${person[*]}"
echo ""
Array;;
12)
printf "\t\t\t12. Accessing Value by key\n"
printf "In Shell Code:-\n\n"
echo 'echo ${person[name]}   # Output: Alice
echo ${person[city]}   # Output: New York'
printf "\nOutput:-\n"
declare -A person
person[name]="Alice"
person[age]=25
person[city]="New York"
echo ${person[name]}   # Output: Alice
echo ${person[city]}   # Output: New York
echo ""
Array;;
13)
printf "\t\t\t13. Looping Through Key Value\n"
printf "In Shell Code:-\n\n"
echo 'for key in "${!person[@]}"
do
  echo "$key: ${person[$key]}"
done
'
printf "\nOutput:-\n"
declare -A person
person[name]="Alice"
person[age]=25
person[city]="New York"
for key in "${!person[@]}"
do
  echo "Person[$key] : ${person[$key]}"
done
echo ""
Array;;
14)
printf "\t\t\t14. Deleting From key\n"
printf "In Shell Code:-\n\n"
echo 'unset person[age]'
printf "\nOutput:-\n"
declare -A person
person[name]="Alice"
person[age]=25
person[city]="New York"
echo "Array Elements : ${person[*]}"
echo "After Deleting person[age]"
unset person[age]
echo "Remaining Elements : ${person[*]}"
echo ""
Array;;
15)
printf "\t\t\t15. Display all key & Values\n"
printf "In Shell Code:-\n\n"
echo 'echo ${!person[@]}   # Output: Show all keys
echo ${person[@]}   # Output: Show all values'
declare -A person
person[name]="Alice"
person[age]=25
person[city]="New York"
printf "\nOutput:-\n"
echo "All Keys are : ${!person[@]}"   # Output: Show all keys
echo "All Values are : ${person[@]}"   # Output: Show all values
echo ""
Array;;
*)
echo "Wrong Inputed Parameters..."
echo "Array Process Terminated."
labTask;;
esac
}
Array
;;
*)
echo "Wrong Inputed Parameters..."
echo "Process Terminated."
;;
esac
}
labTask
