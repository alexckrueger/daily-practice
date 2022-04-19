# Given two arrays, determine whether one is a subset of the other. It is considered a subset if all the values in one array are contained within the other.

# Input: [1, 2, 3, 4, 5, 6], [6, 3, 2]
# Output: true

# Input: [1, 2, 3, 4, 5, 6], [6, 3, 7]
# Output: false

# Input: [1, 2, 3, 4, 5, 6], [6, 3, 3]
# Output: ???


# Write a function that takes in 2 arrays of integers as a parameter
# Loop through the 2nd array
#   for each number in the second array, loop through the first array. 
#     If that number exists in the first array, move on to the next number in the 2nd array
#     If that number does not exist in the first array, return false
# If we get all the way to the end of the 2nd array, return true

def array_subset(mother_array, child_array)
  child_array.each do |child_number|
    if !mother_array.include?(child_number)
      return false
    end
  end
  return true
end

p array_subset([1, 2, 3, 4, 5, 6], [6, 3, 3])