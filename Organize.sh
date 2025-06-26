#!/bin/bash

# Define folder names for each language
declare -A folders=(
  ["c"]="C"
  ["cpp"]="C++"
  ["cc"]="C++"
  ["cxx"]="C++"
  ["py"]="Python"
  ["java"]="Java"
)

# Create folders if they don't exist and move files
for ext in "${!folders[@]}"; do
  folder="${folders[$ext]}"
  mkdir -p "$folder"
  find . -maxdepth 1 -type f -iname "*.$ext" -exec mv {} "$folder/" \;
done

echo "✅ Code files organized into language-specific folders."
