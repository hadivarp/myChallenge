# Define a method 'mayDay' that takes a string as input
def mayDay(string)
  # Define a dictionary mapping words to their corresponding numeric or symbol representations
  dictionary = { "One"=> "1",
                 "Two"=> "2",
                 "Three" => "3",
                 "Four" => "4",
                 "Five" => "5",
                 "Six" => "6",
                 "Seven" => "7",
                 "Eight" => "8",
                 "Nine" => "9",
                 "Ten" => "10",
                 "Dash" => "-"}

  # Split the input string into an array of words and iterate over each word
  string.split(" ").each do |word|
    # Check if the word is present in the dictionary
    if dictionary.key?(word)
      # If present, print the corresponding value from the dictionary followed by an empty string
      print dictionary[word] + ""
    else
      # If not present, print the first character of the word followed by an empty string
      print word[0] + ""
    end
  end
end

# Call the 'mayDay' method with a sample string as an argument
mayDay("Whiskey Hotel Four Tango Dash Alpha Romeo Three Dash Yankee Oscar Uniform Dash Sierra One November Kilo India November Golf Dash Four Bravo Zero Uniform Seven")
