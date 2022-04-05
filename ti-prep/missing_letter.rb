# A given string contains all the letters from the alphabet except for one. Return the missing letter.

# NOTE: You must accomplish this in O(n) time. This is also known as linear time.

# Input: “The quick brown box jumps over a lazy dog”
# Output: “f”

# Create a hash that has each of the letters as keys equal to the value of false
# Loop through the input
#   for each letter in the input, convert it to downcase and set the hash of that letter equal to true
# find the key in the hash that is set to false

def missing_letter(string)
  alphabet = {"a" => false, "b" => false, "c" => false, "d" => false, "e" => false, "f" => false, "g" => false, "h" => false, "i" => false, "j" => false, "k" => false, "l" => false, "m" => false, "n" => false, "o" => false, "p" => false, "q" => false, "r" => false, "s" => false, "t" => false, "u" => false, "v" => false, "w" => false, "x" => false, "y" => false, "z" => false}
  string.gsub(/[\W]/, "").chars.each do |letter|
    alphabet[letter.downcase] = true
  end
  alphabet.key(false)
end

p missing_letter("The quick brown box jumps over a lazy dog")
