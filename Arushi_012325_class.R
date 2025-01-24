#assigning a value to the variable
x<-1
x

#different ways of writing it, careful of the typos 
x<-1
x <-1
x<- 1
x <- 1
x< -1 #here it is checking the values we have assigned greater than and lesser than 

(x <- 1)
#using parentheses directly prints the value
(y<-2)
y<-2

X <- -1

#inequalities and equalities
X==x #checking whether it is equal or not 
X!=x #opposite of == sign

#data types
a <- 1.0
class(a)
b <- 3L
class(b)
b
name <- "arushi"
class(name)
T <- TRUE 
F <- FALSE
class(T)
class(F)
cn <- 32+6i
class(cn)

#types of data structure 
#another data type vector1D, matrix2D (single datatype, numeric values), dataframe2D (any data type, multiple)
v1 <- c(1,2,3,4,5)
v1
class(v1)
v2 <- 1:5
v2
class(v2)
v1==v2
v3 <- 2:6
v3

m1 <- matrix(v1, nrow=5, ncol=5)
m1
m2 <- matrix (v1, nrow=5, v3, ncol=5)
m2 #how to make matrices with different data not repeated ones 

d1 <- data.frame(studentid=c("a","b","c","d","e"), v2, names=c("arushi","ankush","swati","meenakshi", "ampa"))
d1

#datasets and operations on them
emptyv <- numeric(10)
emptyv
emptyv <- c(1,2,3,4)
emptyv
emptyv[8]<-8
emptyv
emptyv[3]
emptyv[1]<-emptyv[8]
emptyv

charv <-c("My", "name", "is", "Arushi")
charv
charv[c(2,4)] #embedded vector subset

names(emptyv) <- c("one", "two", "three", "four", "five", "six", "seven", "eight") #it doesn't accept numbers which are not shown
names(emptyv)

emptyv[c("four","six")]

#activity
n1 <- c(10,20,30,40,50)
c1 <- c("ten", "twenty", "thirty", "forty", "fifty")
names(n1) <- c1
subset1 <- n1[c(1,3,5)]
subset1
subset2 <- c1[c(1,3,5)]
subset2 #did it the long way
(subset2 <- names(subset1)) #short way

#playing around with numbers
x <- 9
y <- 3

(x+y)*(x-y)
y/x
x^2
2^(x*y)
sqrt(x)
sqrt(y)
log10(y)
log(y)
log(x=x, base=y)

myeq<-y/x
myeq

#activity2
leaf_area <- c(2.5,1.6,2.2,2.6)
leaf_mass <- c(22,15,20,24)

mean(leaf_area )
median(leaf_area )
max(leaf_area )
min(leaf_area )
max(leaf_area )>median(leaf_area )

mean(leaf_mass)

LMA <- leaf_mass/leaf_area 
LMA
mean(LMA)
