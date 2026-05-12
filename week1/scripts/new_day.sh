#!/bin/bash

DAY=$1
DATE=$(date +%Y-%m-%d)

if [ -z "$DAY" ]; then
    echo "Please provide a day number. Example: ./new_day.sh 4"
    exit 1
fi

mkdir -p "$HOME/Documents/RobotSkill/week1/notes"
FILE="$HOME/Documents/RobotSkill/week1/notes/day${DAY}.txt"

echo "Day $DAY - $DATE" > $FILE
echo "What I learned today:" >> $FILE
echo "1. " >> $FILE
echo "2. " >> $FILE
echo "3. " >> $FILE

echo "✅ Created notes file for Day $DAY at $FILE"
code $FILE
