def mayDay(string)
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

  string.split(" ").each do |word|
    if dictionary.key?(word)
      print dictionary[word] + ""
    else
      print word[0] + ""
    end
  end

end

mayDay("Whiskey Hotel Four Tango Dash Alpha Romeo Three Dash Yankee Oscar Uniform Dash Sierra One November Kilo India November Golf Dash Four Bravo Zero Uniform Seven")