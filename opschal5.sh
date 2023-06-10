#!/bin/bash

while true; do
    echo "Running Processes:"
    ps -ef
    
    read -p "Enter a PID to kill (or 'q' to quit): " pid
    
    if [[ $pid == 'q' ]]; then
        break
    fi
    
    if [[ $pid =~ ^[0-9]+$ ]]; then
        echo "Killing process with PID $pid..."
        kill -9 $pid
    else
        echo "Invalid input. Please enter a valid PID or 'q' to quit."
    fi
    
    echo
done

echo "Exiting the script."
