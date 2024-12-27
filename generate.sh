#!/bin/bash

# Define the input file
input_file="resume.md"

# Extract the current date in the format YYYY-MM-DD
current_date=$(date +%Y-%m-%d)

# Define the output file, appending the current date
output_file="resume_${current_date}.pdf"

# Generate the resume
pandoc "$input_file" -o "$output_file" --pdf-engine=xelatex -V geometry:margin=1in -V fontsize=11pt

if [ $? -eq 0 ]; then
  echo "Resume generated successfully in $output_file"
else
  echo "Failed to generate resume"
  exit 1
fi