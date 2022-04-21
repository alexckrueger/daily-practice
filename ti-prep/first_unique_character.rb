# Given a string, find the first non-repeating character in it and return its index. If it doesn't exist, return -1.

# NOTE: You must accomplish this in O(n) time. This is also known as linear time.

# Examples:

# s = "leetcode"
# return 0.
# (The "l" is the first character that only appears once in the string, and appears at index 0.)

# s = "loveleetcode",
# return 2.
# (The "l" and "o" are repeated, so the first non-repeating character is the "v", which is at index 2.)

# Note: You may assume the string contain only lowercase letters.

# Write a function that takes in a string as a parameter
# use .tally to convert that string into a hash containing a count of each character
# loop through each letter in the string starting at the beginning
#   if the letter has a count of 1, return that letter
#     otherwise, if every letter appears more than once, return nil

def first_unique_character(word)
  letters = word.chars
  letter_count = letters.tally
  index = 0
  while index < letters.length
    if letter_count[letters[index]] == 1
      return index
    end
    index += 1
  end
  return nil
end

p first_unique_character("leetcode")
p first_unique_character("loveleetcode")
p first_unique_character("eeeee")