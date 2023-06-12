#!/bin/bash

while true; do
    # Display the menu
    echo "Menu:"
    echo "1. Hello world"
    echo "2. Ping self"
    echo "3. IP info"
    echo "4. Exit"

    # Prompt for user input
    read -p "Enter your choice: " choice
    echo

    # Evaluate the user's input
    case $choice in
        1)
            echo "Hello world!"
            ;;
        2)
            ping -c 4 127.0.0.1  # Ping the loopback address
            ;;
        3)
            ifconfig  # Display network adapter information
            ;;
        4)
            break  # Exit the loop
            ;;
        *)
            echo "Invalid option. Please try again."
            ;;
    esac

    echo
done
