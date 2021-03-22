#! /usr/bin/env bash

# When the program is first loaded, display a greeting to the user.
echo "Welcome user! I'm calculator. Would you be kind enough to tell me your name?"
read username
if [[ -z $username ]]; then
echo "Oh! It's fine if you don't want to provide your name."
else
echo "Welcome $username!"
fi
# Then, display a menu that outlines the possible operations:
  # Add
  # Subtract
  # Exit
echo "Press 1 for add"
echo "Press 2 for subtract"
echo "Press 3 for multiplication"
echo "Press 4 for division"
echo "Press 0 to exit the program"
# Then, capture the user selection.
read user_response
# If the selection matches a supported operation, execute the operation.
# If the selection does not match a support operation, display an error message.
echo "Please enter the first number, $username:"
read first_number
echo "and the second number:"
read second_number
echo "Thank you $username"
case $user_response in 
	"1")
	echo "Your answer for $first_number + $second_number is:"
	expr $first_number + $second_number
	;;
	"2")
	echo "Your answer for $first_number -  $second_number is:"
	expr $first_number - $second_number
	;;
	"3")
	echo "Your answer for $first_number * $second_number is:"
	expr $first_number "*" $second_number
	;;
	"4")
	echo "Your answer for $first_number / $second_number is:"
	expr $first_number / $second_number
	;;
	"0")
	echo "Thank you for your time! Exiting program"
	;; 	
	*)
	echo "Please choose the correct option"
	;;
esac
# When the operation is complete, redisplay the menu.
