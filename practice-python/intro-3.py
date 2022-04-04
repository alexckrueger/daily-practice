# Read about the Ruby reduce method. Then refactor the code below using reduce
numbers = [1, 2, 4, 2]
sum = 0

for number in numbers:
    sum += number
print(sum)


# Write a method called scrabble_score which should accept a string as a parameter and return the amount of points it is worth in Scrabble. You can use the following hash to determine how many points each letter is worth:

points = {'a': 1, 'b': 3, 'c': 3, 'd': 2, 'e': 1, 'f': 4, 'g': 2, 'h': 4, 'i': 1, 'j': 8, 'k': 5, 'l': 1, 'm': 3,
          'n': 1, 'o': 1, 'p': 3, 'q': 10, 'r': 1, 's': 1, 't': 1, 'u': 1, 'v': 4, 'w': 4, 'x': 8, 'y': 4, 'z': 10}
# Use the reduce method to perform the computation in your scrabble_score method.
# scrabble_score("scholar")  => 12


# Use the methods map, select, and reduce with the following array of hashes:
items = [
    {"title": "NoDBA", "words": 561, "tags": [
        "nosql", "people", "orm"], "type":"book"},
    {"title": "Infodeck", "words": 1145, "tags": [
        "nosql", "writing"], "type":"book"},
    {"title": "OrmHate", "words": 1718, "tags": [
        "nosql", "orm"], "type":"book"},
    {"title": "ruby", "words": 1313, "tags": ["ruby"], "type":"article"},
    {"title": "DDD_Aggregate", "words": 482,
        "tags": ["nosql", "ddd"], "type":"book"}
]
# and calculate the total amount of words for all items of type :book. The result should be 3906


# Write a method called mutation?, which will accept two strings as a parameter and return true if all the letters from the second string are contained within the first string, and false otherwise.
# p mutation?("burly", "ruby")    #=> true
# p mutation?("burly", "python")  #=> false


# Write a method called sum_of_range, which will accept an array containing two numbers, and return the sum of all of the whole numbers within the range of those numbers, inclusive.
# p sum_of_range([1, 4])  #=> 10
# p sum_of_range([4, 1])  #=> 10
