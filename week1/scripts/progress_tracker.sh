#!/bin/bash

BASE="$HOME/Documents/RobotSkill"
LOG="$BASE/progress_log.txt"
DATE=$(date +%Y-%m-%d)
DAY=$1
NOTE=$2

show_help() {
    echo "Usage:"
    echo "  ./progress_tracker.sh log <day> <note>  — log a day"
    echo "  ./progress_tracker.sh summary           — show all progress"
    echo "  ./progress_tracker.sh streak            — show streak count"
}

log_day() {
    if [ -z "$DAY" ]; then
        echo "Please provide a day number. Example: ./progress_tracker.sh log 5 'learned bash'"
        exit 1
    fi
    echo "$DATE | Day $DAY | $NOTE" >> $LOG
    echo "✅ Day $DAY logged!"
}

show_summary() {
    if [ ! -f "$LOG" ]; then
        echo "No progress logged yet!"
        exit 1
    fi
    echo "==========================="
    echo "   Your Robotics Journey   "
    echo "==========================="
    cat $LOG
    echo "==========================="
    echo "Total days logged: $(wc -l < $LOG)"
}

show_streak() {
    if [ ! -f "$LOG" ]; then
        echo "No progress logged yet!"
        exit 1
    fi
    COUNT=$(wc -l < $LOG)
    echo "🔥 Current streak: $COUNT days"
}

COMMAND=$1
DAY=$2
NOTE=$3

case $COMMAND in
    log)     log_day ;;
    summary) show_summary ;;
    streak)  show_streak ;;
    *)       show_help ;;
esac
