#mathematical operations
1562+189128
129729-18291
200*40
10000/589

#recognition of characters and words
hello#words have to be inside ""
"hello my pc"

#dataset
data=c(2,4,6,8,10,12,14)
View(data)

#creating a list
studentslist=data.frame(
  name=c("arushi", "preeti", "binju", "vaibhavi", "ramya", "ritik", "alan"),
  age=c(23,25,26,23,25,25,22),
  country=c("india", "nepal", "nepal", "india", "india", "india", "mexico"),
  semester=c(1,2,2,2,2,2,1)
)
View(studentslist)

#plotting graphs
attach(studentslist)
plot(age~semester)
plot(name~age)#possible only with numerical data

#working directory
getwd()
setwd("/C:\Users\91986\Desktop/")#why it doesnt work 
#we can set manually too by going to session-set working directory-choose directory location

#downloading required packages
install.packages("ggplot2")
library(ggplot2)
