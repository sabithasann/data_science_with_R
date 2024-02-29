install.packages("tibble")
library("tibble")
install.packages("dplyr") #deeplayer

#data frame
patientID <- c(1,2,3,4)
age <- c(25,"",28,52)
diabetes <- c("Type1", "Type2", "Type1", "Type1")
status <- c("Poor", "Improved", "Excellent", "Poor")
patientdata <- data.frame(patientID, age, diabetes, status)
View(patientdata)

bloodgroup <- c("B+", "A+", "O+", "O-")

patientdata <- cbind(patientdata,bloodgroup)
View(patientdata)
patientdata['status']

gender <- c("Male", "Male", "Female", "Female")
patientdata <- add_column(patientdata, gender, .after = 2)
patientdata <- add_column(patientdata, gender, .after = "status")

patientdata

new_row = list(patientID = 5, age = 21, diabetes = "Type2", status = "Poor", gender = "Male", bloodgroup = "AB-")
patientdata = rbind(patientdata, new_row)

new_row = list(age = 22, patientID = 6, diabetes = "Type2", status = "Poor", gender = "Male", bloodgroup = "AB-")
patientdata = rbind(patientdata, new_row)

new_row = c(7, 23,  "Type2",  "Poor", "Male", "AB-")
patientdata = rbind(patientdata, new_row)

patientdata["status"]

patientdata <- patientdata[,-2]
patientdata <- patientdata[-8,]

#list
g <- "My First List"
h <- c(25,26,18,39)
j <- matrix(1:10, nrow = 5)
k <- c("one", "two", "three")
mylist <- list(title = g, ages = h, j, number = k)
mylist
View(mylist)

mylist[[2]]























