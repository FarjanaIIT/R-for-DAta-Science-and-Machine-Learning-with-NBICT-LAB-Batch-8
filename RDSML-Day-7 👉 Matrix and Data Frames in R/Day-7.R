# RDSML-Day-7 👉 Matrix and Data Frames in R
# Making the environment ready
# Matrix in R
# The Matrix() function 
# Joining two columns 
# Naming rows and columns
# Selecting an element from a matrix
# Data Frames in R

# Matrix in R, on which data are organised in column and numeric
study_hours = c(89, 69, 45, 75, 63, 54, 23, 25, 57, 46)
subject_marks = c(79, 53, 71, 57, 63, 54, 74, 77, 61, 69)
# matrix is kind of data, in which we can see all data combinedly.

#Creating a matrix just using study_hours, sometimes it can be needed vector needs to be converted into matrix
stu_hours_mat = matrix(study_hours)
stu_hours_mat
study_hours

# Joining two columns in a matrix. 
students_data = c(study_hours, subject_marks)
students_data 
students_matrix = matrix(students_data, byrow = FALSE, nrow = 10) # byrow in R bydefault is setting to TRUE-organising data in one column, that'why it is needed to set up FALSE to divide data in two column, nrow means number of row in one column
students_matrix # Breaking into two separate columns from one column

# Naming rows and columns by using colnames
colnames(students_matrix) = c("Hours", "Marks")
students_matrix

rownames(students_matrix) = c(1:10) # We can see range by using colon
students_matrix

# needs to try for three column in a matrix structure

# Selecting an element from a matrix by using [] and telling by row and column number

students_matrix[4, 1]
students_matrix[1,1]
students_matrix[9, 2]

summary(subject_marks) # we can know the summary in a matrix data
summary(students_matrix)

# Data Frames in R
student_names = c('Mr1', 'Ms2', 'Ms3', 'Mr4', 'Ms5')
study_hours = c(20, 24, 46, 62, 22)
marks = c(40, 55, 69, 54, 45)
gender = c('Male', 'Female', 'Female', 'Male', 'Female')
male = c(TRUE, FALSE, FALSE, TRUE, FALSE)

# In Matrix, we can't work with different data types, we  needs data frames to work with different data.

stu_data = data.frame(student_names, study_hours, marks, gender)
stu_data
summary(stu_data)

stu_data = data.frame(student_names, study_hours, marks, male)
stu_data
summary(stu_data)

mean(stu_data$study_hours)
