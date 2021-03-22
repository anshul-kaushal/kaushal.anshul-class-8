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
# When the operation is complete, redisplay the menu.
