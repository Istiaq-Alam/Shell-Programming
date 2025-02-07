#!/bin/bash
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
printf "\t\t\t10. Declaring Associative Array\n"
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
printf "\t\t\t11. Accessing Value by key\n"
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
