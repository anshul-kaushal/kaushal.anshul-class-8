#! /usr/bin/env bash
function get_numbers {
echo "Please enter the first number:"
read first_number
echo "Please enter the second number:"
read second_number
}
program=1
# When the program is first loaded, display a greeting to the user.
echo "Welcome user! I'm calculator. Would you be kind enough to tell me your name?"
read username
if [[ -z $username ]]; then
echo "Oh! It's fine if you don't want to provide your name."
username="user"
else
echo "Welcome $username!"
fi
# Then, display a menu that outlines the possible operations:
  # Add
  # Subtract
  # Exit
until [[ $program -eq 0 ]]; do
echo ""
echo "------------CALCULATOR------------"
echo ""
echo "Press 1 for add"
echo "Press 2 for subtract"
echo "Press 3 for multiplication"
echo "Press 4 for division"
echo "Press 0 to exit the program"
# Then, capture the user selection.
read user_response
# If the selection matches a supported operation, execute the operation.
# If the selection does not match a support operation, display an error message.
# When the operation is complete, redisplay the menu.
if [[ $user_response -eq 0 ]]; then
echo "Thank you for your time! Exiting program...."
program=0
else
case $user_response in 
	"1")
	get_numbers
	echo "Your answer for $first_number + $second_number is:" 
	expr $first_number + $second_number
	;;
	"2")
	get_numbers
	echo "Your answer for $first_number -  $second_number is:"
	expr $first_number - $second_number
	;;
	"3")
	get_numbers
	echo "Your answer for $first_number * $second_number is:"
	expr $first_number "*" $second_number
	;;
	"4")
	get_numbers
	echo "Your answer for $first_number / $second_number is:"
	expr $first_number / $second_number
	;;	
	*)
	echo "Please choose the correct operation, $username"
	;;
esac
echo ""
echo "Thank you $username"
fi
done
