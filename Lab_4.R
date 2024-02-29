#read user input using readline
var1 = readline(prompt = "Enter any value : ")
var2 = readline(prompt = "Enter any number : ")

var2 = as.integer(var2)

print(var1)
print(var2)

#read user input using scan
x = scan(what = " ")
print(x)

#editing data frame data
mydata <- data.frame(age=numeric(0), gender=character(0),weight=numeric(0))
mydata <- edit(mydata)
View(mydata)

#read data from csv file
testdata <- read.csv("D:/AIUB/Spring-24/Data Science/Midterm/Lab/data.csv", header = TRUE, sep = ",")
View(testdata)
testdata <- edit(testdata)

#to see the attributes name
names(testdata)

#adding new column to the data frame
gender <- c("Male", "Male", "Female", "Female", "Male", "Female", "Male", "Female", "Male")
testdata <- cbind(testdata, gender)

#to change the attribute value
testdata$gender <- factor(testdata$gender, levels = c("Male", "Female"), labels = c(1,2))

testdata$gender <- factor(testdata$gender, levels = c(1, 2), labels = c("Male","Female"))
#to see the structure of the data
str(testdata)
#to see the descriptive statistics
summary(testdata)
#to calculate the standard deviation of an attribute
sd(testdata$Loan)
#to get the standard deviation of the multiple column
library(dplyr)
testdata %>% summarise_if(is.numeric, sd)

#to get row wise standard deviation
install.packages("matrixStats")
library(matrixStats)

testdata$score = rowSds(as.matrix(testdata[,c(2,3)]))
testdata

View(testdata)



















