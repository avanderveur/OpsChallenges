import random
def guessing_game():
    secret_number = random.randint(1, 20)
    tries = 0
    while True:
        guess = int(input("Guess a number between 1 and 20: "))
        tries += 1
        if guess < secret_number:
            print("Higher!")
        elif guess > secret_number:
            print("Lower!")
        else:
            print(f"Yes! You guessed it in {tries} guesses.")
            break
# Run the game
guessing_game()