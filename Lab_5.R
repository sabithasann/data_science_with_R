mydata <- read.csv("D:/AIUB/Spring-24/Data Science/Midterm/Lab/data.csv", header = TRUE, sep = ",")
View(mydata)
#to select a specific attribute
library(dplyr)
test <- select(mydata,Loan)
View(test)

is.na(mydata)
#finds the location of missing values
which(is.na(mydata))
#finds the count of missing values
sum(is.na(mydata))

summary(mydata)
#count the number of missing values in the column
colSums(is.na(mydata))

print("Location of missing values in Loan column")
which(is.na(mydata$Loan))
print("Count of missing values in Loan column")
sum(is.na(mydata$Loan))
#count the number of missing values in the row
rowSums(is.na(mydata))

mydata[mydata == ''] <- NA

