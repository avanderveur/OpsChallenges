#!/bin/bash

# Function to print login history
print_login_history() {
    echo "This is the login history"
    last
    echo
}

# Call the function three times
print_login_history
print_login_history
print_login_history
