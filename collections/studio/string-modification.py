my_string = "LaunchCode"


# a) Use string methods to remove the first three characters from the string and add them to the end.

first_string = my_string[:3]
second_string = my_string [3:]

print(f"{second_string}{first_string}")

modified_string = second_string + first_string


# Use a template literal to print the original and modified string in a descriptive phrase.

print(f"Original string: '{my_string}', Modified string: '{modified_string}'")


# b) Modify your code to accept user input. Query the user to enter the number of letters that will be relocated.

n = int(input("Enter the number of letters to move from the start to the end: "))
modified_string = my_string[n:] + my_string[:n]
print(f"The original string was '{my_string}' and after moving the first {n} letters to the end, it becomes '{modified_string}'.")

# c) Add validation to your code to deal with user inputs that are longer than the word. In such cases, default to moving 3 characters. Also, the template literal should note the error.
n = int(input("Enter the number of letters to move from the start to the end: "))
if n > len(my_string):
    
    note = f" (input {n} is longer than string length, defaulting to 3)"
    n = 3
    modified_string = my_string[n:] + my_string[:n]
    print(f"The original string was '{my_string}' and after moving the first {n} letters to the end, it becomes '{modified_string}'.")