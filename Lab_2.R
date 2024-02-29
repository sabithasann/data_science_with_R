#while loop
i <- 1
while (i < 6){
  print(i)
  i <- i+1
  if(i == 4)
    break
}

i <- 0
while (i < 6){
  i <- i+1
  if(i == 3)
    next
  print(i)
}

#for loop
for (x in 1:10)
  print(x)

for (x in 1:2)
  for (y in 1:3)
    print(x*y)

#concatenation multiple value of different types
a <- c (1,2,5,3,6,-2,4)
b <- c ("one", "two", 'three')
c <- c (TRUE, FALSE)
print(a)
cat(a,b,c)


name <- "Hello world"
Name <- c("hello", "world")
nchar(name)
nchar(Name)

length(name)
length(Name)


X <- c(20,10,40,15)

Y <- sort(X)

Z <- sort(X, decreasing = TRUE)

X[1]
X[1:4]
X[-1]
c(X[1], X[3])

#matrix
myMatrix <- matrix(1:20, nrow = 5, ncol = 4)
print (myMatrix)

m <-matrix(X, nrow = 3  , ncol = 4, byrow = TRUE)
print(m)

cells <- c(1:4)
rnames <- c("R1", "R2")
cnames <- c("c1", "c2")

newMatrix <- matrix(cells, nrow=2, ncol=2, byrow = TRUE, dimnames = list(rnames, cnames))
print(newMatrix)

cat(newMatrix[,1], sep = '\n')
print(newMatrix[1,])
print(newMatrix[1,2])
print(newMatrix[2,1])
print(c(newMatrix[1,1], newMatrix[2,2]))
newMatrix[1,c(1,2)]
newMatrix[c(1,2)]

#array
myArray <- array(1:24, c(2,3,3))
print(myArray)

myArray[1,1,3]
myArray[c(15)]






