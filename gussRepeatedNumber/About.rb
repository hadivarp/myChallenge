# Ruby Guessing Repeated Number Game
## Problem Statement:
Create a game where the player has to guess how many times a randomly selected number appears in a generated list of 10 random numbers between 1 and 9.
  ## Overview:
  This Ruby program implements a simple guessing game. The program generates an array of 10 random numbers between 1 and 9. The player is shown these numbers for 5 seconds, then the screen is cleared. A random number from 1 to 9 is selected, and the player must guess how many times that number appears in the array. If the players guess is correct, they win. Otherwise, they lose.
  # Implementation:
  The program follows these steps:
1. Generate an array of 10 random numbers between 1 and 9.
  2. Initialize a hash to store the count of each number.
    3. Count occurrences of each number in the generated array.
    4. Display the generated random numbers to the player.
      5. Wait for 5 seconds to give the player time to see the numbers.
        6. Clear the screen to "hide" the numbers.
        7. Select a random number from 1 to 9 for the player to guess the count.
        8. Prompt the player to guess how many times the selected number appears.
          9. Check if the players guess matches the actual count of the selected number:
      If the guess is correct, congratulate the player and end the game.
        If the guess is incorrect, inform the player that they lose.

        # How to Use:
        Ensure you have Ruby installed on your system.
          Copy the provided Ruby code.
            Run the script in your preferred Ruby environment using the command ruby solve.rb.