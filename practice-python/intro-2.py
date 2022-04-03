# Read about the Ruby select method. Then refactor the code below using select
numbers = [1, 2, 4, 2]
even_numbers = []

# for number in numbers:
#     if number % 2 == 0:
#         even_numbers.append(number)

even_numbers = [num for num in numbers if num % 2 == 0]

print(even_numbers)


# Use the select method with the following array of hashes

movies = [
    {"id": 1, "title": "Die Hard", "rating": 4.0},
    {"id": 2, "title": "Bad Boys", "rating": 5.0},
    {"id": 3, "title": "The Chamber", "rating": 3.0},
    {"id": 4, "title": "Fracture", "rating": 2.0}
]
# to create a new array of hashes that only contain movies with a rating less than 4.0.

bad_movies = [movie for movie in movies if movie["rating"] < 4.0]
print(bad_movies)


# Use the select method combined with the map method to convert the array of hashes into an array of hashes that only contain movie ids of the movies with the letter 'b' in the title (case insensitive). The result should look like: [2, 3]

b_movies = [movie["id"]
            for movie in movies if movie["title"].casefold().find("b") > -1]
print(b_movies)


# Write a method called palindrome? which should accept a string as a parameter and return a boolean that indicates whether the string is a palindrome. A palindrome is a word that reads the same both forwards and backwards. Examples: eye, madam, racecar

def palindrome(string):
    return string == string[::-1]


print(palindrome("tacocat"))

# Write a method called split_array, with two parameters, the first being an array, and the second being an integer. The method will then create an array of other arrays, each one being the size of the indicated by the second parameter.


def split_array(array, integer):
    splitsies = []
    while len(array) > 0:
        array_to_add = []
        while (len(array_to_add) < integer) and (len(array) > 0):
            array_to_add.append(array[0])
            array.pop(0)
        splitsies.append(array_to_add)
    return splitsies


print(split_array([0, 1, 2, 3, 4, 5], 2))
print(split_array([0, 1, 2, 3, 4, 5], 3))
print(split_array([0, 1, 2, 3, 4, 5], 4))
