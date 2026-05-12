#!/bin/bash

greet_student() {
    NAME=$1
    echo "Hello $NAME, welcome to Day 4!"
}

create_topic_folder() {
    TOPIC=$1
    mkdir -p "$HOME/Documents/RobotSkill/$TOPIC"
    echo "✅ Created folder for: $TOPIC"
}

greet_student "Akash"
create_topic_folder "ros2"
create_topic_folder "navigation"
create_topic_folder "gazebo"
