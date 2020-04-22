# Introduction to Coding in R lab exercise. 
# In this script, you will learn some of the basics of coding in R. 
# Additional resources, such as an orientation to RStudio, can be found in the GitHub repository: https://github.com/stacycalhoun/R_resources
# Compiled and Developed by Stacy Calhoun

# R is an open source programming language and software that can be used to manipulate datasets, create maps,
# organize files, and perform statistical analyses. There are many functionalities to R, but only a few are addressed in this script.
# Important reminders: 
  # 1. R will only do what you tell it to do! It can't read your mind, no matter how much you wish it could. You're giving the computer instructions to follow so they need to be step-by-step. 
  # 2. R is very picky--> capitalizations, spacings, and underscores matter! If R can't find an object you've created--> Check your spelling!
  #    Additionally, it may be that you are wanting R to reference something that is named, but not an object, in which case you might need to add quotes "" or ''     
  # 3. Google and Stack Overflow are your friends! Can't remember a command? Google it! Getting an error you don't understand? Google it!
  # 4. Don't be afraid to use and adapt other people's code! No one remembers everything off the top of their heads and if someone else has a
  #    script that works, use it! Don't feel like you have to reinvent the wheel!
  # 5. Not sure what a function or command does? In the console pane, type ?+the function you want more information about (example: ?ddply) and hit enter.
  #    The description of the function will show up under the "Help tab" in the bottom right pane.

# To run a line of code, you can: place your cursor in the line you wish to run or highlight the line or lines of code
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
# Typing out and running a variable (example in the line below) will print its assigned value in the console 
Lion 

# Why isn't 'Lion' found? (Hint: Check the spelling!) Fix the issue and run the line again.

tiger = 2
tiger

assign("bear", 23)
bear

# Once variables are assigned a value, you can use them instead of the numerical values for mathematical functions, as described above.

tiger + lion + bear

(lion - tiger)*bear

# Creating vectors --------------------------------------------------------
# A vector is a simple data structure in R. It combines elements of the same type under an assigned name

# Combining elements into a vector. The c() here groups the elements inside the parentheses together.
x = c(1, 4, 7, 13)

fruit = c("apple", "orange", "banana", "pineapple")

#Creating sequences
# Sequences are like vectors, but they have a numerical pattern to them. 
# Suppose you want a vector that has all of the numbers between 1 and 50. 
# This would be considered a sequence.

# This assigns all values between the range 1 to 13 to vector "y", including 1 and 13
y = 1:13

# The seq() command allows you to specify a range and to assign all values between those numbers that are a defined step apart.
# For example, the following line will assign all of the numbers between 1 and 5 every 0.5 steps
z = seq(1, 5, by = 0.5)

# Installing and loading libraries ----------------------------------------

# R packages or libraries expand the utility of R, and can make coding easier. Here we will install some basic packages that have broad uses. 

# As with many things, there is more than one way to install packages.

# Method one
install.packages("tidyverse", "dplyr", "plyr", "ggplot2", "ggThemeAssist", "dismo", "readxl", "data.table")

# Method 2 (my preferred method): Go to "Tools" in the menu bar at the top of the screen. Select "Install Packages". A screen will pop up that will
# allow you to type in a list of packages. 
#Once your list is complete, make sure there is a check in the "Install Dependencies" box,
# then click "Install". Try this method with the package called "beepr"

#Loading packages. Once packages are installed, they have to be loaded before you can use any of their functions
library(tidyverse)
library(plyr)
library(readxl)
library(data.table)

#Loading lots of packages. The lapply() function here applies the command "library" to all elements of the list x we created in the preceding line of code
x = c("tidyverse", "dplyr", "plyr", "ggplot2", "ggThemeAssist", "dismo", "readxl")
lapply(x, library, character.only=TRUE)

# Setting working directory -----------------------------------------------
# The working directory is the folder that R is working within when you are loading in datasets or saving files. 

# In Rstudio, you can navigate to the desired folder in the "Files" tab in the bottom right pane, click on the
# "More" button in the tool bar at the top of the pane, then select "Set As Working Directory"

# If you know the pathway to the folder you want your directory to be in, you can use setwd() to set the working directory
# Please note that the following pathway is set up for a Mac OS and the formatting may be different for a Windows computer.
setwd("~/Desktop/R_Code")

# This command will print out the currently assigned working directory in the console pane. 
#This is also a good way to see how the file pathway is formatted for your operating system.
getwd()

# Reading in datasets ------------------------------------------------------
# One of the main functionalities of R is being able to read in pre-existing datasets to further manipulate or analyze.
# ***If you are having trouble reading in data, check to make sure your working directory is where your files are located!!***

# Reading in csv files
csv_example = read.csv("Practice_csv_dataset.csv")

# Reading in excel files. The readxl library must be loaded to read in excel files!
# The number at the end of the command tells R which sheet in the workbook to pull from 
excel_example = read_xlsx("Practice_excel_dataset.xlsx", 1)

# You can also export data frames from R. An example is below in the Pulling Data section.


# Built in datasets -------------------------------------------------------

# R has datasets that are built in and can be used as practice dataframes for your code.
# To see the list of built in datasets in the datasets package use this command
data()
# To see all available datasets, as other packages have built-in datasets as well, use the following code
data(package = .packages(all.available = TRUE))

# To use a built in dataset, find the name of the dataset you want to utilize, and use the following lines of code. 
# You should see the dataset listed under the "Environment" tab in the upper right pane after you run the second line of code.
# The summary() command here will print out summarized information about each column in the dataframe in the console below.

data("mtcars")
summary(mtcars)

# Pulling data from external databases --------------------------------------------------------

# Depending on the type of data or analysis you are doing, you can also use R to pull data from large databases.
# To demonstrate this, we will be pulling data from the Global Biodiversity Information Facility (GBIF).
# Pick your favorite animal (or you can use the species for your wildlife management plan) and look up its species name.

# The dismo library is the library we will use to access the GBIF database. The beepr library is a fun add-on that allows you
# to add sounds that will play once a function is complete.

library(dismo)
library(beepr)

# Choose a name for your dataset (currently names Species) and plug in the genus and species names of your organism. 
# It will probably take awhile for the dataset to download

Species = gbif("Callinectes", "sapidus"); beep(3)

#There is more information in the dataset than we will need, so we will subset it to only include columns we need.
# This line of code tells R the columns we want: "species" and "year". 
# It also specifies that we only want observations from the "year" column to be between 1990 and 2009
Species_Year = subset(Species, select= c('species', 'year'), Species$year >= 1990 & Species$year <= 2009)

#Now that the dataset is smaller, we need to calculate how many observations of the species were made each year. We can do this by counting the number
# of rows that have the same year in the "year" column. This is because each line in a GBIF dataset is a single observation of the species of interest.

# ddply() is a function from the plyr library that allows you to group together rows of data based on variable within the dataframe.
# In this example, we are grouping all of the rows of data with the same year together and then counting up how many observations or occurences
# were observed. It applies the function to the whole dataset and returns a dataframe with the grouping variable and the columns created through the 
# specified functions--in this case, the dataframe will have two columns: year and occurence.

Species_Occ = ddply(Species_Year, ("year"), summarize, 
                    occurence = length(species))

# If you want to save a dataframe that you have created or reorganized within R, you can use the write_csv or write.csv commands
write_csv(Species_Occ, "Blue Crab_Occurence.csv")


# Editing dataframes ------------------------------------------------------

# In R, you can change the names of columns, add or delete columns, and change the order of columns

# Changing column names

# Changing the name of a single column by referencing dataframe and the number of the column that is getting renamed
colnames(mtcars)[1] = "Miles_per_gal"
#Changing name by referring to the old name using rename from the plyr library 
mtcars = rename(mtcars, c("cyl" = "cylinders"))

# Changing the names of all of the columns using Species_Occ dataframe created above and the setnames function from data.table.
Species_Occ = setnames(Species_Occ, old = c("year", "occurence"), new = c("Year", "Occ") ) 

# Changing multiple, but not all names of a dataframe using names function with the mtcars dataframe with altered column names
names(mtcars)[names(mtcars) %in% c("Miles_per_gal", "cylinders", "hp")] = c("mpg", "cyl", "horsepower")

# Adding a column
# Say I wanted to add a column with the Species name to my Species_Occ dataframe. I would do the following.
# The $ here references a column in the dataframe Species_Occ. Since that column doesn't currently exist, it creates a new one
# and fills it with what is on the right side of the = in this case, "Callinectes_sapidus"
Species_Occ$Species = "Callinectes_sapidus"

# You can also use this format to create a new column with a function applied. 
# In this example, we are adding 1 and taking the log of all occurence values and storing them in a new column call Transformed_Occ

Species_Occ$Transformed_Occ = log(Species_Occ$Occ + 1)

# Deleting a column
# If you need to remove a column, you can do the following. In this example we are deleting the Transform_Occ column created in the preceding lines of code

Species_Occ$Transformed_Occ = NULL

# Basic Plotting ---------------------------------------------------------------

#Using the data we pulled from the GBIF database, we will use ggplot to plot the number of occurrences per year as a line graph, and as a bar graph.

#Line plot
# Within the ggplot() function, you list the name of your dataframe and the x and y variables 
Species_line = ggplot(Species_Occ, aes(Year, Occ)) +
  geom_point(color = "purple", shape = 1) +
  geom_line(color = "green", linetype = 2) +
  theme_classic() +
  labs(title = "Occurences of Blue Crab from 1990-2009", x = "Year", y = "Number of Occurences")

plot(Species_line)


#Bar plot
Species_bar = ggplot(Species_Occ, aes(Year, Occ)) +
  geom_bar(stat = "identity", fill = "blue") +
  theme_classic() +
  labs(title = "Occurences of Blue Crab from 1990-2009", x = "Year", y = "Number of Occurences")

plot(Species_bar)


# Organizing your code ----------------------------------------------------

# One way to make your code easier to read and understand is to create sections and make comments. Sections
# can be added by going to Code on the RStudio Menu bar and selecting "Insert section."
# Sections also can be created by using the keyboard shortcut ctrl+shift+R for Windows or command+shift+R for Macs
# The section will be inserted at the next open line closest to your cursor in your code editor. Sections will have a small arrow beside
# the line number to the left of the code. This arrow allows you to collapse or expand each section.
# Try making the introduction to this script its own section. Place your cursor at the beginning of line 1 and hit enter.
# Next move your cursor into the open line you just created. Insert your section titled "Introduction" in this line using your preferred method.


# Using "#" allows you to add comments to your code. Text that is commented out (has the # symbol in front of it)
# will be ignored by R as it runs your code. As you can see with this script, comments allow you to annotate your code
# so it is easier for others to understand and serves as a reminder to yourself what each section of code is supposed to be doing.



