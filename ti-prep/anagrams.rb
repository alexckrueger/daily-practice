# Given two strings, return true if they are anagrams of each other, and false if they are not. An anagram is a word, phrase, or name formed by rearranging the letters of another, such as cinema, formed from iceman.

# Do not use any built-in sort methods.

# Input: “silent”, “listen”
# Output: true

# Input: “frog”, “bear”
# Output: false



# Write a function that takes in 2 strings 
# convert each string to a hash that tallies up each character
# compare the two hashes to each other
# Return true if they're the same or false if they're not

def anagram(word_1, word_2)
  hash = word_1.chars.tally
  comparison = word_2.chars.tally
  hash == comparison
end

p anagram("silent", "listen")
p anagram("frog", "bear")