#!/bin/bash

#brew update
#brew upgrade

FILE="packages.txt"

while read -r line;
do
	[[ "$line" =~ ^#.*$ ]] && continue
	brew install "$line"
done < "$FILE"