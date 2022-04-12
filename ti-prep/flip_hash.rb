# Given a hash, create a new hash that has the keys and values switched.

# Input: {"a" => 1, "b" => 2, "c" => 3}
# Output: {1 => "a", 2 => "b", 3 => "c"}

# Write a function that takes in a hash as a parameter
# loop through the hash with .map - inverse the key and the values?
# return hash

def flip_hash(hash)
  hash.reduce({}){ |hash, (letter,value)| hash.merge(value=>letter) }
end

p flip_hash({"a" => 1, "b" => 2, "c" => 3})