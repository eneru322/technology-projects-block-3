#!/bin/bash
 
read -p "Enter password: " password

score=0

[ ${#password} -ge 12 ] && ((score++))
echo "$password" | grep -q "[A-Z]" && ((score++))
echo "$password" | grep -q "[a-z]" && ((score++))
echo "$password" | grep -q "[0-9]" && ((score++))
echo "$password" | grep -q "[[:punct:]]" && ((score++))

if [$score -le 1 ]; then
echo "Very weak"
elif [$score -qe 2 ]; then
echo "Weak"
elif [$score -qe 3 ]; then
echo "Normal"
elif [$score -qe 4 ]; then
echo "Strong"
else
echo "Super Strong"
fi
