def number_guessing_game
  # Print the rules of the game to the user
  print "Rule of game: you can ask only 10 questions to find the answer. Good luck!\e"

  # Initialize the counter for the number of guesses
  counter = 0

  # Initialize the chance counter
  chance = 1

  # Generate a random number between 1 and 100 as the answer
  answer = rand(1..100)

  # Prompt the user to guess a number
  print "Please guess a number: "

  # Loop until the user has guessed 10 times
  while counter < 10
    # Get the user's guess and convert it to an integer
    num = gets.chomp.to_i

    # Check if the user's guess is correct
    if num == answer
      # If the guess is correct, print a congratulatory message and exit the function
      puts "Hooray you win, the answer is #{answer}"
      return
      # Check if the user's guess is less than the answer
    elsif num < answer
      # If the guess is too low, inform the user and tell them how many chances are left
      puts "Your choice is lower than the answer. Be careful, you have #{10 - chance} chances left."
    else
      # If the guess is too high, inform the user and tell them how many chances are left
      puts "Your choice is greater than the answer. Be careful, you have #{10 - chance} chances left."
    end

    # Increment the counter for the number of guesses
    counter += 1

    # Increment the chance counter
    chance += 1
  end

  # If the user has used all their guesses, print a failure message
  puts "You failed."
end

# Call the number guessing game function to start the game
number_guessing_game
