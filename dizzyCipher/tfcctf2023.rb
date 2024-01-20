# Define a method named dizzyCipher
def dizzyCipher
  # Cipher code: The encrypted string containing characters and indices
  myArr = "T4 l16 _36 510 _27 s26 _11 320 414 {6 }39 C2 T0 m28 317 y35 d31 F1 m22 g19 d38 z34 423 l15 329 c12 ;37 19 h13 _30 F5 t7 C3 325 z33 _21 h8 n18 132 k24"

  # Split the string into an array of substrings based on spaces
  parts = myArr.split(" ")

  # Create an empty array with a length of 100
  answer = [''] * 100

  # Iterate through the substrings to separate index and character, then replace in the empty array
  for p in parts do
    c = p[0] # Extract the character
    i = p[1..-1].to_i # Extract the index and convert to an integer
    answer[i] = c # Replace the element at the specified index in the array with the character
  end

  # Concatenate the elements of the array into a string and print the result
  puts answer.join
end

# Call the dizzyCipher method
dizzyCipher

