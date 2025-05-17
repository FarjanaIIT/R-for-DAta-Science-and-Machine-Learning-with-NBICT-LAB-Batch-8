# Factors in R 

# Statistical Summary of Numeric items
participants_age = c(78, 25, 68, 45, 48, 36)
summary(participants_age)

# Finding summary of characters
profession = c("Doctor", "Teacher", "Teacher", "Businessman", "Teacher")
summary(profession) # it will not provide the real summary

# converting vector into factor to get summary of character data to let know R as each replicate is category
profession = factor(profession)
summary(profession)

# Putting the summary in order, if I am creating summary of i.e 100 participant 
birth_month = c("Jan", "Dec", "Apr", "Aug", "Jan", "Jun", "Mar", "Apr", "Jul", "Aug", "Sep", "Apr", "Oct", "Jul", "Sep")
summary(birth_month) 

birth_month_fact = factor(birth_month, 
                          ordered = TRUE, 
                          levels = c("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"))
summary(birth_month_fact)

# Lists in R
# Lists in R used to place number of items in a bundle by using my_list syntax

a = c(2, 4, 7)
b = c("Red", "Green", "Blue")
c = "welcome!"

# Want to create a list of these three objects

my_list = list(a, b, c)

my_list

# Naming the list items of a, b, c

my_list = list(Pieces = a, Colors = b, message = c)
my_list

# Calling a specific data structure
my_list[3]
my_list["Colors"] # another way to find specific data in a vector

# another way to find specific data in a vector
my_list$Pieces 
my_list$Colors
my_list$message

# Calling specific/particular items from the data  structure 

my_list$Colors[1]
my_list$Colors[3]
my_list$Colors[5]
