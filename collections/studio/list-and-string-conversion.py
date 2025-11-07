proto_list1 = "3,6,9,12"
proto_list2 = "A;C;M;E"
proto_list3 = "space delimited string"
proto_list4 = "Comma-spaces, might, require, typing, caution"

strings = [proto_list1, proto_list2, proto_list3, proto_list4]

# a) Use the 'in' method to check to see if the words in each string are separated by commas (,), semicolons (;) or just spaces.

for s in strings:
    if "," in s:
        print("Separated by comma")
    elif ";" in s:
        print("Separated by semicolons")
    elif " " in s:
        print("Separated by spaces")
    else:
        print("Unknown delimiter")

# b) If the string uses commas to separate the words, split it into an array, reverse the entries, and then join the array into a new comma separated string.

for s in strings:
    if "," in s:
        parts_as_array = s.split(',')
        print(parts_as_array)

        reversed_array = parts_as_array[::-1]
        print(reversed_array)

        comma_separated_string = ','.join(reversed_array)
        print(comma_separated_string)

# c) If the string uses semicolons to separate the words, split it into an array, alphabetize the entries, and then join the array into a new comma separated string.

for s in strings:
    if ";" in s:
        parts_as_array = s.split(',')
        print(parts_as_array)

        reversed_array = parts_as_array[::-1]
        print(reversed_array)

        comma_separated_string = ','.join(reversed_array)
        print(comma_separated_string)


# d) If the string uses spaces to separate the words, split it into an array, reverse alphabetize the entries, and then join the array into a new space separated string.



# e) If the string uses ‘comma spaces’ to separate the list, modify your code to produce the same result as part “b”, making sure that the extra spaces are NOT part of the final string.
