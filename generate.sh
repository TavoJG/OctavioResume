#!/bin/bash

# Define the input file
input_file="resume.md"

# Extract the current date in the format YYYY-MM-DD
current_date=$(date +%Y-%m-%d)

# Define the output file, appending the current date
output_file="resume_${current_date}.pdf"

if ! command -v pandoc >/dev/null 2>&1; then
  echo "Missing dependency: pandoc"
  echo "Install it and run this script again."
  exit 1
fi

if ! command -v xelatex >/dev/null 2>&1; then
  echo "Missing dependency: xelatex"
  echo "On Fedora, install it with: sudo dnf install texlive-xetex"
  exit 1
fi

missing_latex_packages=()

if ! kpsewhich xcolor.sty >/dev/null 2>&1; then
  missing_latex_packages+=("xcolor.sty")
fi

if ! kpsewhich geometry.sty >/dev/null 2>&1; then
  missing_latex_packages+=("geometry.sty")
fi

if [ ${#missing_latex_packages[@]} -gt 0 ]; then
  echo "Missing LaTeX packages: ${missing_latex_packages[*]}"
  echo "On Fedora, install them with: sudo dnf install texlive-xcolor texlive-geometry"
  exit 1
fi

# Generate the resume
pandoc "$input_file" -o "$output_file" --pdf-engine=xelatex --pdf-engine-opt=-halt-on-error -V geometry:margin=1in -V fontsize=11pt

if [ $? -eq 0 ]; then
  echo "Resume generated successfully in $output_file"
else
  echo "Failed to generate resume"
  exit 1
fi
