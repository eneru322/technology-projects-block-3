#!/bin/bash

read -p "Enter password: " password

score=0

[ ${#password} -ge 12 ] && ((score++))
echo "$password" | grep -q "[A-Z]" && ((score++))
echo "$password" | grep -q "[a-z]" && ((score++))
echo "$password" | grep -q "[0-9]" && ((score++))
echo "$password" | grep -q "[[:punct:]]" && ((score++))

echo "Score: $score/5"
