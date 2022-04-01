# Research the Ruby map method. Then refactor the code below using map.
numbers = [1, 2, 4, 2]
doubled_numbers = []
# for number in numbers:
#     doubled_numbers.append(number * 2)
# print(doubled_numbers)

# Playing around with some different list methods
# doubled_numbers.append(numbers[2])
# print(numbers.count(2))
# doubled_numbers.extend(numbers)
# print(f"doubled_numbers: {doubled_numbers}")
# print(f"numbers: {numbers}")


def doubles_number(number):
    return 2 * number


doubled_by_map = map(doubles_number, numbers)
print(list(doubled_by_map))


# Use the map method to convert the array of hashes

items = [
    {'id': 1, 'body': 'foo'},
    {'id': 2, 'body': 'bar'},
    {'id': 3, 'body': 'foobar'}
]

# into an array that only contains the ids. The result should look like:
# [1, 2, 3]

# not using map:
# item_ids = []
# for item in items:
#     item_ids.append(item['id'])
# print(item_ids)


def find_id(item):
    return item['id']


item_ids = map(find_id, items)
print(list(item_ids))


# Use the map method with the to_h method to convert the array of hashes
fruits = [
    {"name": "apple", "color": "red"},
    {"name": "banana", "color": "yellow"},
    {"name": "grape", "color": "purple"}
]
# into a single hash where the keys are the names and the values are the colors. The result should look like:
# {"apple": "red", "banana": "yellow", "grape": "purple"}


def combine_name_and_color(fruit):
    return [fruit["name"], fruit["color"]]


combined_fruits = map(combine_name_and_color, fruits)
print(dict(combined_fruits))


# Write a method called reverse_a_string that accepts a string as a parameter and returns the reverse. The one caveat: Don't use the reverse method that already comes with Ruby!
# p reverse_a_string("abcde")  #=> "edcba"

def reverse_a_string(string):
    # return string[::-1] # This is the "build in method"
    letters = []
    for letter in string:
        # Could have inserted then reversed, but that felt like cheating
        letters.insert(0, letter)
    return "".join(letters)


print(reverse_a_string("taco night"))


# Write a method called find_longest_word, which will accept a string as a parameter (usually a sentence), and return another string that will be the longest word in that sentence.
# p find_longest_word("What is the longest word in this phrase?")  #=> "longest"

def find_longest_word(string):
    string_list = string.split()
    largest_word = ""
    for word in string_list:
        if len(word) > len(largest_word):
            largest_word = word
    return largest_word


print(find_longest_word("Hello my most dear friend, Computaladora and Python!"))
