# Given a hash, return a flat array containing all the hash’s keys and values.

# Input: {“a” => 1, “b” => 2, “c” => 3, “d” => 4}
# Output: [“a”, 1, “b”, 2, “c”, 3, “d”, 4]

# Input: {"c" => "sds", 3 => 90}
# Output: ["c", "sds", 3, 90]

# Input: {"Yellow boogie man" => 50, :selector => [1, 4, 6]}
# Output: ["Yellow boogie man", 50, :selector, [1, 4, 6]]

# write a function that takes in a hash as a parameter
#   define an empty array
#   loop through the hash
#     input the key and then the value into the array for each element in the hash
#   return the array  

def flatten_hash(hash)
  output_array = []
  hash.each do |key, value|
    output_array << key
    output_array << value
  end
  output_array
end

p flatten_hash("a" => 1, "b" => 2, "c" => 3, "d" => 4)
p flatten_hash({"c" => "sds", 3 => 90})
p flatten_hash({"Yellow boogie man" => 50, :selector => [1, 4, 6]})