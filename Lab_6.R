mydata <- read.csv("D:/AIUB/Spring-24/Data Science/Midterm/Lab/data.csv", header = TRUE, sep = ",")
View(mydata)
newdata <- data.frame(mydata["Loan"], mydata["Interest_rate"])

#to remove NA values from a data set
mydata <- na.omit(mydata)

mydata[mydata == ''] <- NA
