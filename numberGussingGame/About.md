# Ruby Number Guessing Game
## Problem Statement:
Create a game where the player has up to 10 chances to guess a randomly generated number between 1 and 100.

## Overview:
This Ruby program implements a simple number guessing game. The player is given 10 attempts to guess a number randomly selected between 1 and 100. After each guess, the program informs the player whether their guess is too low or too high. If the player guesses correctly within 10 attempts, they win. Otherwise, the game ends with a failure message.

# Implementation:
The program follows these steps:

1. Display the rules of the game to the player.
2. Initialize counters for tracking the number of guesses and remaining chances.
3. Generate a random number between 1 and 100 as the answer.
4. Prompt the player to guess a number.
5. Loop up to 10 times, checking each guess:
 - If the guess is correct, congratulate the player and end the game.
 - If the guess is too low, inform the player and indicate how many chances are left.
 - If the guess is too high, inform the player and indicate how many chances are left.
 - If all 10 attempts are used without a correct guess, display a failure message.
# How to Use:
Ensure you have Ruby installed on your system.
Copy the provided Ruby code.
Run the script in your preferred Ruby environment using the command ruby your_script_name.rb.