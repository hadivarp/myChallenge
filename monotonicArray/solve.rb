def monotonic_array(arr)
  # Check if the array is non-increasing
  decreasing = arr.each_cons(2).all? { |a, b| a >= b }

  # Check if the array is non-decreasing
  increasing = arr.each_cons(2).all? { |a, b| a <= b }

  if decreasing || increasing
    { message: "Monotonic true" }
  else
    { message: "Monotonic false" }
  end
end

array = [-1, -5, -10, -1100, -1100, -1101, -1102, -9001]
puts monotonic_array(array)
