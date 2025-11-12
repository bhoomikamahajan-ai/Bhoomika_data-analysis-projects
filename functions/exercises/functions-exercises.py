# Part 1 A -- Make a Line

def make_line(size):
    line = ""
    for i in range(size):
        line += '#'
    return line

# Part 1 B -- Make a Square
# create a function using your make_line function to code a square

def make_square(size):
    square = ""
    for i in range(size):
        square += make_line(size) 
        if i < size -1 :         # no newline after last line
            square += "\n"
    return square 

# Part 1 C -- Make a Rectangle

def make_rectangle(width, height):
    rectangle = ""
    i = 1
    while i <= height:
        rectangle += make_line(width) 
        if i < height:          # no newline after last line
            rectangle += "\n"
        i +=1
    return rectangle

print(make_line(2))
print(make_square(4))   
print(make_rectangle(6, 3))

# Part 2 A -- Make a Stairs

# def make_downward_stairs(height):
    
def make_downward_stairs(height):
    stairs = ""
    for i in range(1, height + 1):
        stairs += make_line(i)
        if i < height:          # no newline after the last step
            stairs += "\n"
    return stairs


print(make_downward_stairs(5))


# Part 2 B -- Make Space-Line ---####---

def make_space_line(numSpaces, numChars):
    spaces = " " * numSpaces
    chars = make_line(numChars)
    return spaces + chars + spaces

print(make_space_line(4,4)) 

# Part 2 C -- Make Isosceles Triangle

def make_isosceles_triangle(height):
    triangle = ""
    for i in range(height):
        spaces = " " * (height - i - 1)
        hashes = make_line(2 * i + 1)
        triangle += spaces + hashes + spaces 
        if i < height - 1:
            triangle += '\n'            

    return triangle
#print(make_isosceles_triangle(5))

def inverted_isoscles_triangle(height):
    bottom_triangle = ""
    for i in range(height -2, -1, -1):
        spaces = " " * (height - i - 1)
        hashes = make_line(2 * i + 1)
        bottom_triangle += spaces + hashes + spaces 
        if i > 0:
            bottom_triangle += '\n'
    return bottom_triangle      
    


# Part 3 -- Make a Diamond
def make_diamond(height):
    diamond = " "
    top_triangle = make_isosceles_triangle(height)
    bottom_triangle = inverted_isoscles_triangle(height)
    diamond = top_triangle +'\n' +  bottom_triangle
    return diamond
    

print(make_diamond(6))





