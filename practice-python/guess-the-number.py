from ast import If
import random  # Imports the library random into this file

random.seed
print(random.randrange(1, 5))
print(random.randint(100, 200))

array = ["a", "b", "c", "d", "e", "f"]

print(random.choice(array))
print(array)
print(random.sample(array, len(array)))


def guess(max_number):
    random_number = random.randint(1, max_number)
    guess = 0
    while (guess != random_number):
        guess = int(input(f"Guess a number between 1 and {max_number}: "))
        print(guess)
        if guess < random_number:
            print("Too low! Guess again.")
        elif guess > random_number:
            print("Too high! Guess again.")
    print(f"You got it! The number was {random_number}")


# guess(5)


def computer_guess(my_number):
    low_range = 1
    high_range = my_number + 10
    feedback = ""
    while feedback != 'c':
        guess = random.randint(low_range, high_range)
        feedback = input(
            f"is {guess} too high (H), too low (L), or correct (C)? ").lower()
        if feedback == 'h':
            high_range = guess - 1
        if feedback == 'l':
            low_range = guess + 1
    print(f"The computer has guessed your number, {guess}, correctly!")


computer_guess(5)
