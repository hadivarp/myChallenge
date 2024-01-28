# Function to find all triplets in the array that sum up to the target sum
def three_number_sum(array, target_sum)
  triplets = [] # Array to store the found triplets

  array.sort! # Sort the array in ascending order for efficient traversal

  # Iterate through the array up to the second-to-last element
  (0..array.length - 2).each do |current_index|
    left_pointer = current_index + 1 # Pointer starting from the next element
    right_pointer = array.length - 1 # Pointer starting from the end of the array

    # Explore combinations of elements for the current number
    while left_pointer < right_pointer
      triplet_sum = array[current_index] + array[left_pointer] + array[right_pointer]

      if triplet_sum == target_sum
        # If the triplet's sum equals the target sum, record the triplet
        triplets.push([array[current_index], array[left_pointer], array[right_pointer]])
        left_pointer += 1 # Move left pointer to avoid duplicates
        right_pointer -= 1 # Move right pointer to avoid duplicates
      elsif triplet_sum < target_sum
        # If the sum is less than the target, move the left pointer to the right
        left_pointer += 1
      else
        # If the sum is greater than the target, move the right pointer to the left
        right_pointer -= 1
      end
    end
  end

  triplets # Return the array of found triplets
end

# Example usage:
input_array = [12, 3, 1, 2, -6, 5, -8, 6]
target_sum = 0
result = three_number_sum(input_array, target_sum)
puts result.inspect
