# String concatenation
name = "Alex"

# Options:
print("Hi, my name is " + name)
print("Hi, my name is {}".format(name))
print(f"Hi, my name is {name}")

adj = input("Adjective: ")
number = input("Number: ")
adj2 = input("Adjective: ")

madlib = f"Python is very {adj}. I have tried to learn {number} languages. None of them compare to how {adj2} Python is!"

print(madlib)
