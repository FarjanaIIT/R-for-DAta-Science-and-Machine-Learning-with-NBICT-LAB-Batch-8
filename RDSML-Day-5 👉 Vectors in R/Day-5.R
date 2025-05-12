# Vectors (data structure) in R

# Creating a vector using the c() command, if I want to keep multiple values in one variable
student_height = c(60, 69, 55, 62)
student_height

# check the class of vectors student_height
is.numeric(student_height) # whether it is numeric data type, it will logical data
is.logical(student_height) # if I check it is logical data type, it will logical data

# R automatically converts numeric to text when you have a text item in the vector or combinedly write numeric plus text.
b = c(5, 8, 2, "sv") # if i create one vectors combinedly text and numeric, it will give the class of data as string
b
is.numeric(b)
is.logical(b)
is.character(b)

# we can convert data types 
# for example from numeric to character
a = c(1, 2, 3, 4, 5)

class(a)
class(student_height)
is.numeric(a)
a = as.character(a) # way of update the conversion of data type from numeric to string
class(a)

# Logical operator TRUE and FALSE when converted to numeric, TRUE converts to 1, FALSE converts to 0

d = c(TRUE, FALSE, FALSE, TRUE, FALSE)
d = as.numeric(d)
d

# If want to converting numeric to logical data (1 or any number)
#other than zero, converts to TRUE, O converts to FALSE
d
class(d)
d = as.logical(d)
d
e = c(1, 0, 0, 1, 0, 23, -7, 0)
e = as.logical(e)
e

# Creating sequential vector by using clone using c() command
# Creating a vector starting from 1 to 10
my_seq = c(1:50, 80, 99, 88, 60, 77, 71, 61, 92, 97) # if I want to give break
my_seq

# Creating sequential vector using seq() function
new_seq = c(seq(1,10))
new_seq

# sequence in steps of 3 by using "by" parameter
new_seq = c(seq(1, 10, by=3)) 
new_seq

# vectors can have character
names = c("Elias", "Mahfuza", "Asraf")
class(names)
names[1:3] # we can say ranges by using clone

# Assigning names to vector values
my_values = c(4, 7, 9, 11)
names(my_values) = c("a", "b", "c", "d")
my_values
my_values["d"]