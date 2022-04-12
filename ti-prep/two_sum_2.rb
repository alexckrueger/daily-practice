# This is the same exercise as Two Sum I, but you must now solve it in linear time.

# Given an array of numbers, return a new array containing just two numbers (from the original array) that add up to the number 10. If there are no two numbers that add up to 10, return false.

# Input: [2, 5, 3, 1, 0, 7, 11]
# Output: [3, 7]

# Input: [1, 2, 3, 4, 5]
# Output: false (While 1, 2, 3, and 4 altogether add up to 10, we're seeking just one pair of numbers.)

# Write a function that takes in an array of numbers
# Define an empty hash
# loop through the array of numbers
#   set the number as a key in the hash with the value equal to 10 - number
#   search the hash for the newly generated value 
#     if it exists, return those two numbers in an array
# if the entire search takes place without a match, return false

def two_sum(numbers)
  number_pairs = {}

  numbers.each do |number|
    number_pairs[number] = 10 - number
    if number == 5
      if numbers.tally[5] > 1
        return [5, 5]
      end
    elsif number_pairs[10 - number]
      return [number, 10 - number]
    end
  end

  return false
end


p two_sum([2, 5, 3, 1, 0, 7, 11, 5])
p two_sum([1, 2, 3, 4, 5])