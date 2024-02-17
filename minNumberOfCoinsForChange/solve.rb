# Define the function min_number_of_coins_for_change that takes an array of coin denominations (coins)
# and a target amount of money (target_amount) as input.
# The function returns the minimum number of coins needed to make change for the target amount using the given coin denominations.
def min_number_of_coins_for_change(coins, target_amount)

  # Initialize an array 'dp' of size 'target_amount + 1' with the value Float::INFINITY.
  # 'dp[i]' represents the minimum number of coins needed to make change for 'i' cents.
  # Float::INFINITY indicates that no solution has been found yet for a particular amount.
  dp = Array.new(target_amount + 1, Float::INFINITY)
  dp[0] = 0
  # Iterate over each coin in the given coin denominations.
  # For each coin, iterate from the coin value up to the target amount.
  # For each amount, update 'dp[amount]' to be the minimum of its current value and 'dp[amount - coin] + 1'.
  # This operation effectively tries to include a coin of the current value in the change for the amount,
  # checking if it results in a smaller number of coins.
  coins.each do |coin|
    (target_amount).downto(coin).each do |amount|
      dp[amount] = [dp[amount], dp[amount - coin] + 1].min
    end
  end
  # Check if 'dp[target_amount]' is still Float::INFINITY.
  # If it's not, a solution was found, so the minimum number of coins needed to make change for the target amount is 'dp[target_amount]'.
  # If it is, no solution was found, so return -1 to indicate that it's impossible to make change for the target amount.
  result = dp[target_amount] == Float::INFINITY ? -1 : dp[target_amount]

  # Return the result.
  return result
end
# Test the function with coins = [1, 5, 10] and target_amount = 16.
coins = [1, 5, 10]
target_amount = 16
result = min_number_of_coins_for_change(coins, target_amount)
puts result #for target_amount 16 result should be 3
