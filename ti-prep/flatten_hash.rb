# Given a hash, return a flat array containing all the hash’s keys and values.

# Input: {“a” => 1, “b” => 2, “c” => 3, “d” => 4}
# Output: [“a”, 1, “b”, 2, “c”, 3, “d”, 4]

# write a function that takes in a hash as a parameter
# define an ouput array
# use an each loop to iterate through the hash
#   input the key followed by the value into the array
# return array

def flatten_hash(hash)
  array = []
  hash.each do |k,v|
    array << k
    array << v 
  end
  return array
end

p flatten_hash({"a" => 1, "b" => 2, "c" => 3, "d" => 4})