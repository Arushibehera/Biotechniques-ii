#working with data 
data()#view list of data in R 
data(trees)#selecting the data available, can be written in ""
data("trees")
print(trees)#viewing the data
summary(trees)#stats calculated for the given data
head(trees)#first few rows shown 
tail(trees)#last few rows shown 
class(trees)#datatype 
str(trees)#how the data is presented rows and columns and what type of data 
dim(trees)#no. of rows and no. of columns 
names(trees)#column names variables under

#install and load package dplyr, every session need to load, again installation is not necessary
install.packages("dplyr")
library(dplyr)

#applying the features present in this package to the data frames 

#knowing about theses features 
?filter#pick by values 
?arrange#reorder
?select#pick by names 
?mutate#add new column
?summarize#stats the specific ones you want
?group_by

#selecting already available data 
data()
data("OrchardSprays")
str(OrchardSprays)

#applying these features 
filter(OrchardSprays,decrease>50)#according to value, one condition 
filter(OrchardSprays,decrease<50,rowpos<5)#according to value, two conditions 
arrange(OrchardSprays,decrease)
select(OrchardSprays, rowpos, colpos)
mutate(OrchardSprays, 
       rc=rowpos*colpos)
summarize(OrchardSprays,
          mind=min(decrease),
          meand=mean(decrease))


#using pipe operator to group all the functions 
OrchardSprays %>%
  filter(decrease>30) %>%
  arrange(decrease)%>%
  select(rowpos,colpos)%>%
  mutate(rc=rowpos+colpos) %>%
  summarize(rcm=mean(rc))

#creating a subset by applying the conditions 
subset<-OrchardSprays %>%
  filter(decrease>30) %>%
  arrange(decrease)%>%
  select(rowpos,colpos)%>%
  mutate(rc=rowpos+colpos)

subset

#grouping and applying a function
OrchardSprays %>%
  group_by(treatment) %>%
  summarise(meanr=mean(rowpos), meanc=mean(colpos))

#Activity 1 
install.packages("nycflights13")
library(nycflights13)
library(dplyr)

data(flights)#load the dataset
print(flights)#data shown as output 
View(flights)#data shown as a separate tab 
names(flights)#know the names of columns to use as variable 

filter(flights, month==7|month==8|month==9)
arrange(flights,dep_delay)
arrange(flights,desc(dep_delay))
selecteddf<-select(flights, month:dep_time)
selecteddf
mutatedf<-flights%>%mutate(speed=distance/air_time *60)
mutatedf

flights %>%
  group_by(origin) %>%
  summarise(avgd=mean(dep_delay,na.rm=TRUE))

#Activity 2
myp <- data.frame (
  names=c("tusar","sipu", "sanvi","ankush","swati"),
  age=c(56,51,14,23,26),
  gender=c("M","F","F","F","M"),
  commute=c(4,2,3,5,2))

myp %>%
  group_by(gender)%>%
  summarise(avgch=mean(commute))
  
updatedmyp <- myp%>%
  arrange(age)%>%
  mutate(ac=age/commute)

updatedmyp
head(updatedmyp)
tail(updatedmyp)
str(updatedmyp)
summary(updatedmyp)

#saving the dataframe as a file in the computer 
write.csv(updatedmyp, file="dataframe.csv", row.names=TRUE)
getwd()

#basic data visualisation
#plotting graphs 
p1<-plot(myp$age,myp$commute)
p2<-plot(myp$names,myp$commute)#does not work for other than numeric data 

#enhancing the graphical representation, every function seperated by a comma
?pch
p3<-plot(myp$age, myp$commute,
     xlab="Age",
     ylab="Commute hours",
     main= "Age vs Commute hours",
     pch=ifelse(myp$name=="ankush",11,16),
     col=ifelse(myp$name=="ankush","blue","green"))

legend("topright",c("Ankush","Others"),
       col = c("blue","green"),
       pch=c(11,16))

png("p.png") #saves file but does not open, shows corrupted file 

#Activity 3 
examscores<- data.frame(
  studentid=c(1:10), 
  maths=c(98,68,79,50,93,85,75,89,20,82),
  science=c(99,80,87,65,95,83,80,87,18,85)
)

examscores 
View(examscores)

#variables used for plotting will be maths and science scores for the students
# to compare the scores for each student, overall evaluation
p<-plot(examscores$maths,examscores$science)
#with the plot one can easily judge the performance of each student
#figures out the lowest scoring student, highest scoring student 

#customizing the plot 
upp<-plot(examscores$maths,examscores$science, 
          xlab="Maths scores",
          ylab="Science scores", 
          main="Overall evaluation - scores of 2 subjects",
          pch=ifelse(examscores$studentid==1,15,19),
          col=ifelse(examscores$studentid==1,"red","green"))

legend("bottomright",c("Top performer","Others"),
       col = c("red","green"),
       pch=c(15,19))
          