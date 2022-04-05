# Given a hash, where the keys are strings representing food items, and the values are numbers representing the price of each food, return the amount someone would pay if they'd order one of each food from the entire menu.

# Input: {"hot dog" => 2, "hamburger" => 3, "steak sandwich" => 5, "fries" => 1, "cole slaw" => 1, "soda" => 2}

# Output: 14

# Explanation: If someone would order one of everything on the menu, they'd pay a total of 14 (the sum of all the hash's values).

# Input: {"hot dog" => 3, "hamburger" => 4, "steak sandwich" => 5, "fries" => 1, "cole slaw" => 1, "soda" => 2}
# Output: 16

# Guesswork
# hash = {"hot dog" => 2, "hamburger" => 3, "steak sandwich" => 5, "fries" => 1, "cole slaw" => 1, "soda" => 2}
# sum_of_prices = 0
# hash.each do |item|
#   sum_of_prices += item[1]
# end
# p sum_of_prices

# p hash.values.reduce(:+)

def sum_of_menu(menu_items)
  menu_items.values.reduce(:+)
end

p sum_of_menu({"hot dog" => 3, "hamburger" => 4, "steak sandwich" => 5, "fries" => 1, "cole slaw" => 1, "soda" => 2})