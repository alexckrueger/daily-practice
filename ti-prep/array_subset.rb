# Given two arrays, determine whether one is a subset of the other. It is considered a subset if all the values in one array are contained within the other.

# NOTE: You must accomplish this in O(n) time. This is also known as linear time.

# Input: [1, 2, 3, 4, 5, 6], [6, 3, 2]
# Output: true

# Input: [1, 2, 3, 4, 5, 6], [6, 3, 7]
# Output: false

# Input: [1, 2, 3, 4, 5, 6], [9, 1, 4]
# Output: false

# write a function that takes in 2 arrays as parameters
# convert all of the first array to a hash - set each number in the array to have a value of true
# loop through the second array
  # if any of the second array does not exist within the hash, return false
  # if all of the second array exists within the hash, return true

def array_subset(big_array, subset_array)
  numbers = {}
  numbers_exist = true
  big_array.each do |number|
    numbers[number] = true
  end
  subset_array.each do |number|
    if !numbers[number]
      numbers_exist = false
    end
  end
  numbers_exist
end

p array_subset([1, 2, 3, 4, 5, 6], [6, 3, 2])
p array_subset([1, 2, 3, 4, 5, 6], [6, 3, 7])
p array_subset([1, 2, 3, 4, 5, 6], [9, 1, 4])