def guess_repeated_number
  # Generate an array of 10 random numbers between 1 and 9 (excluding 10)
  random_numbers = 10.times.map { rand(1..9) }

  # Initialize a hash to store the count of each number
  counts = Hash.new(0)

  # Count occurrences of each number in the random_numbers array
  random_numbers.each { |num| counts[num] += 1 }

  # Display the generated random numbers
  puts "Random numbers: #{random_numbers}"

  # Wait for 5 seconds to give the user time to see the numbers
  sleep(5)

  # Clear the screen to "hide" the numbers
  if RUBY_PLATFORM =~ /win32|win64|cygwin/
    system 'cls' # Clear screen for Windows
  else
    system 'clear' # Clear screen for Unix-based systems
  end

  # Select a random number from 1 to 9 for the user to guess the count
  repeated_time = rand(1..9)

  # Prompt the user to guess how many times the selected number appears
  puts "Please tell me how many times the number #{repeated_time} is repeated:"
  r = gets.chomp.to_i

  # Check if the user's guess matches the actual count of the selected number
  if r == counts[repeated_time]
    puts "Hooray, You Win" # If correct, user wins
  else
    puts "You lose" # If incorrect, user loses
  end
end

# Run the guess_repeated_number method
guess_repeated_number
