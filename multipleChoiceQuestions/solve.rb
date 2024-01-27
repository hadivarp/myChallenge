# Define a function to check if a number meets certain conditions
def multipleChoiceQuestion(num)
  # Convert the number to a string, extract unique digits
  digits = num.to_s.chars.uniq

  # Check if there are exactly two unique digits and none of them is '0'
  digits.length == 2 && !digits.include?('0')
end

# Initialize a counter for numbers meeting the conditions
count = 0

# Iterate through numbers from 100 to 999 (inclusive)
(100..999).each do |i|
  # Increment the counter if the number meets the conditions
  count += 1 if multipleChoiceQuestion(i)
end

# Print the final count
puts count
