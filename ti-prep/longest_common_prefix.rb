# Write a function to find the longest common prefix string amongst an array of strings.

# If there is no common prefix, return an empty string "".

# Example 1:

# Input: ["flower","flow","flight"]
# Output: "fl"
# Example 2:

# Input: ["dog","racecar","car"]
# Output: ""
# Explanation: There is no common prefix among the input strings.
# Note:

# All given inputs are in lowercase letters a-z.


# ==== ATTEMPT 1 ====
# write a function that takes in an array of strings as a parameter
# store the first word in a variable
#   separate that word into an array of letters
# loop through each other word in the input and compare the letters to the first word
# store the longest string that is the same
# return the longest string

# def longest_common_prefix(words)
#   smallest_word = words.sort_by(&:length)[0].chars  # Find the smallest word to optimize loop speed
#   common_prefix = ""                                # Output value
#   words.each do |word|
#     letters = word.chars
#     prefix = ""
#     index = 0
#     while index < smallest_word.length              # purpose of loop is to add to prefix variable
#       if smallest_word[index] == letters[index]
#         prefix << smallest_word[index]
#         index += 1
#       else
#         index = smallest_word.length                # "break" instead?
#       end
#     end
#     if common_prefix.length > prefix.length || common_prefix.length == 0   
#       common_prefix = prefix
#     end
#   end
#   return common_prefix
# end
# ==== END ATTEMPT 1 ====


# ==== ATTEMPT 2 ====

# Write a method that takes in an array of words as a paremeter
# set the smallest word equal to a variable of prefix
# loop through the array of words
#   loop through the letters of each word
#     when the letters don't match prefix, cut off the prefix to that point and break the loop so as to move on to the next word
# return prefix

def longest_common_prefix(words)
  prefix = words.sort_by(&:length)[0].chars
  words.each do |word|
    index = 0
    while index < prefix.length
      if word.chars[index] != prefix[index]
        prefix.slice!(index, prefix.length)
      end
      index += 1
    end
  end
  return prefix.join("")
end

# ==== END ATTEMPT 2 ====



# Test cases
p longest_common_prefix(["flower","flow","flight"])
p longest_common_prefix(["dog","racecar","car"])
p longest_common_prefix(["yellow", "yell", "howdy", "yello123"])
p longest_common_prefix(["yellow", "yell", "yelo123"])