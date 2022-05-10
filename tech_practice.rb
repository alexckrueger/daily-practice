# Given a string, find the most commonly occurring letter.

# Input: “peter piper picked a peck of pickled peppers”
# Output: “p”

# Input: "my little pony atty"
# Output: "t"


# For later: .tally
# array.tally: hash["a"] => 4

# write a skeleton of a function that takes in a string as a parameter
  # split that string up into an array of individual characters, ["a", "b", "a"]
  # define an empty hash
  # loop through the array
  #   count the number of each letters in that array ["a" is 2, "b" is 1] into that hash
  #   if that letter doesn't exist in the hash already, set it equal to 1
# return the letter with the highest count 


def common_letter(phrase)
  count_of_character = {}
  highest_count = 0
  highest_character = ""

  phrase.delete(" ").each_char do |character|

    if count_of_character[character]
      count_of_character[character] += 1
    else
      count_of_character[character] = 1
    end

    if count_of_character[character] > highest_count
      highest_count = count_of_character[character]
      highest_character = character
    end

  end

  return highest_character

  # count_of_character.max_by{|character,count| count}[0]
end

p common_letter("peter piper picked a peck of pickled peppers")
p common_letter("my little pony atty")
p common_letter("abcd")