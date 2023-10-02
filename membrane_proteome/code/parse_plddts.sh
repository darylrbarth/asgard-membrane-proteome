#!/bin/bash

# Specify the input file and output file names
input_file="input.txt"
output_file="output.txt"

# Initialize a variable to store the previous line
previous_line=""

# Read the input file line by line
while IFS= read -r current_line
do
    # Check if the previous line starts with 'pLDDT'
    if [[ $previous_line == pLDDT* ]]; then
        # Keep the previous line and the current line in the output file
        echo "$previous_line" >> "$output_file"
        echo "$current_line" >> "$output_file"
    else
        echo 
    fi

    # Update the previous line
    previous_line="$current_line"
done < "$input_file"


#OR MAYBE THIS

# Specify the input file and output file names
input_file="input.txt"
output_file="output.txt"

# Initialize variables to store the current line and the next line
current_line=""
next_line=""

# Read the input file line by line
while IFS= read -r line
do
    # Store the next line in the next_line variable
    current_line="$next_line"
    next_line="$line"

    # Check if the current line starts with 'pLDDT'
    if [[ $current_line == pLDDT* ]]; then
        # Keep the current line and the next line in the output file
        echo "$current_line" >> "$output_file"
        echo "$next_line" >> "$output_file"
    fi
done < "$input_file"