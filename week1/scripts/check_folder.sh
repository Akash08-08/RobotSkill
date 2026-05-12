#!/bin/bash

FOLDER="$HOME/Documents/RobotSkill"

if [ -d "$FOLDER" ]; then
    echo "✅ RobotSkill folder exists — you are on track!"
else
    echo "❌ Folder not found — something is wrong"
fi
