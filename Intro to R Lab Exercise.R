# Introduction to Coding in R lab exercise. 
# In this script, you will learn some of the basics of coding in R. 
# Additional resources, such as an orientation to RStudio, can be found in the GitHub repository: https://github.com/stacycalhoun/R_resources
# Compiled by Stacy Calhoun

# R is an open source programming language and software that can be used to manipulate datasets, create maps,
# organize files, and perform statistical analyses. There are many functionalities to R, but only a few are addressed in this script.
# Important reminders: 
  # R will only do what you tell it to do! It can't read your mind, no matter how much you wish it could.
  # R is very picky--> capitalizations, spacings, and underscores matter! If R can't find an object you've created--> Check your spelling!
  # Google and Stack Overflow are your friends! Can't remember a command? Google it! Getting an error you don't understand? Google it!
  # Don't be afraid to use and adapt other people's code! No one remembers everything off the top of their heads and if someone else has a
  #   script that works, use it! Don't feel like you have to reinvent the wheel!
  # Not sure what a function or command does? In the console pane, type ?+the function you want more information about and hit enter.
  #   The description of the function will show up under the "Help tab" in the bottom right pane.

# To run a line of code, you can: place your cursor in the line you wish to run or highlight the line or lines
# and click "Run" at the top of the code editor pane OR you can use the keyboard shortcut ctrl+enter for Windows or command+enter for Macs

# Basic math --------------------------------------------------------------

# R can be used to perform basic mathematical functions, much like a calculator. Unless assigned a name, the answer will appear in the console

#Addition and Subtraction
45 + 32
# How this will look in the console: [1] 77

53 - 22
# How this will look in the console: [1] 31

#Multiplication and division

4*25

340/12

#Logarithms (Note: log() will take the natural log (ln) of the value in parentheses; 
#                 log10() will take the base 10 or "log" as appears on most calculators)

log(450)

log10(450)

# This is the same as e^value in parentheses
exp(450)

#Exponents
13^4

# Assigning variables --------------------------------------------------------

# Assigning a variable stores a value or character string (a word or series of words) with the assigned name
# This allows you to use the variable in multiple places in your code, but it only has to be changed in one place.
# There are three main ways to assign variables <- , = , assign()

lion <- 15
Lion 

tiger = 2

assign("bear", 23)

# Once variables are assigned a value, you can use them instead of the values for mathematical functions

tiger + lion + bear

(lion - tiger)*bear

# Creating vectors --------------------------------------------------------

# Combining elements into a vector

x = c(1, 4, 7, 13)

fruit = c("apple", "orange", "banana", "pineapple")

#Creating sequences

y = 1:13

z = seq(1, 5, by = 0.5)




# Organizing your code ----------------------------------------------------

# One way to make your code easier to read and understand is to create sections and make comments. Sections
# can be added by going to Code on the RStudio Menu bar and selecting "Insert section."
# Sections also can be created by using the keyboard shortcut ctrl+shift+R for Windows or command+shift+R for Macs
# The section will be inserted at the next open line closest to your cursor in your code editor. Sections will have a small arrow beside
# the line number to the left of the code. This arrow allows you to collapse or expand each section.
# Try making the introduction to this script its own section. Place your cursor at the beginning of line 1 and hit enter.
# Next move your cursor into the open line you just created. Insert your section titled "Introduction" in this line using your preferred method.


# Using "#" allows you to add comments to your code. Text that is commented out (has the # symbol in front of it
# will be ignored by R as it runs your code.



