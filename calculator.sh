#!/bin/bash
#Function to perform addition
addition() {
	    result=$(echo "$1 + $2" | bc)
	        echo "Result: $result"
	}
	 
	# Function to perform subtraction
	 subtraction() {
	     result=$(echo "$1 - $2" | bc)
	         echo "Result: $result"
	         }
	          
	          # Function to perform multiplication
	          multiplication() {
	                  result=$(echo "$1 * $2" | bc)
	                  echo "Result: $result"
	                  }
	                   
	                   # Function to perform division
	                   division() {
	                       if [ $2 -eq 0 ]; then
	                               echo "Error: Division by zero!"
	                        else
	                                result=$(echo "scale=2; $1 / $2" | bc)
	                                                   echo "Result: $result"
	                       fi
	                                                       }
	                                                        
	                                                        # Main script
	                                                         
	                                                         echo "Simple Calculator"
	                                                         echo "1. Addition"
	                                                         echo "2. Subtraction"
	                                                         echo "3. Multiplication"
	                                                         echo "4. Division"
	                                                         echo -n "Enter your choice (1-4): "
	                                                         read choice
	                                                          
	                                                          echo -n "Enter first number: "
	                                                          read num1
	                                                          echo -n "Enter second number: "
	                                                          read num2
	                                                           
	                                                           case $choice in
	                                                               1) addition $num1 $num2 ;;
	                                                                   2) subtraction $num1 $num2 ;;
	                                                                       3) multiplication $num1 $num2 ;;
	                                                                           4) division $num1 $num2 ;;
	                                                                              *) echo "Invalid choice"
									      esac
