#!/bin/bash

file=$1
letter=$2

# Check if the file exists
if [ ! -f "$file" ]; then
    echo "Error: File '$file' not found!"
    exit 1
fi

# Count words in the file
word_count=$(wc -w < "$file")

# Count occurrences of the letter (case-insensitive)
letter_count=$(grep -oi "$letter" "$file" | wc -l)

#Count Line in the file
line_count=$(wc -l < "$file")

# Display the results
echo "Line count: $line_count"
echo "Word count: $word_count"
echo "Letter '$letter' occurrence: $letter_count"



#command - ./word_letter_count.sh document.txt a
