def moveElementToEnd(array, toMove)
  # Initialize two pointers: left and right
  left = 0
  right = array.length - 1

  # Iterate until left pointer crosses the right pointer
  while left < right
    # Move the right pointer to the left until a non-toMove element is found
    while left < right && array[right] == toMove
      right -= 1
    end

    # If left pointer is still less than right pointer, swap elements
    if left < right
      array[left], array[right] = array[right], array[left]
    end

    # Move the left pointer to the right
    left += 1
  end

  # Print the resulting array vertically
  puts array.join(', ')
end

# Example usage
array = [2, 1, 2, 2, 2, 3, 4, 2]
toMove = 2

# Call the function
moveElementToEnd(array, toMove)
