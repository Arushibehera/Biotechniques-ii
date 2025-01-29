#dataframes (spreadsheets in R) and their usage

#loading the newly created csv file *save the csv file in the working directory 
getwd()
setwd()#done manually and the csv file saved there
newdata <- read.csv("data_R.csv")

#show and calculate few stats for data 
print(newdata)
summary(newdata)

#creating own dataframe and using it 
df<- data.frame (
sample= c(1:4),
leaf_area=c(2.5,1.6,2.2,2.6),
leaf_mass= c(22,15,20,24),
LMA=numeric(4)
)
print(df)
summary(df)

#viewing the data
#specific column 
newdata$Plants
newdata$flowers_number
df$sample
df$leaf_mass
newdata[,4]
df[,2]
#specific row
newdata[3,]
df[2,]
#specific data
newdata[3,2]
#specific set of data
newdata[2:6, 1:3]

#activity
name <- c("tusar", "sipu","sanvi","swati","ankush")
my_people <- data.frame (
  name=name,
  age<-c(56,51,14,26,23),
  gender<-c("M","F","F","F","M"),
  avg_commute_time<-c(4,1,3,3,3)
)
mean(my_people$age)
mean(my_people$avg_commute_time)
min(my_people$age)
max(my_people$avg_commute_time)

#conditional statements
num1<-3
num2<-4
num1==num2
num1<num2
num1>num2
num1<=num2
num1!=num2#! means not true, indicates negation
!(num1<num2)

char1<-"a"
char2<-"b"
char1==char2

var1<-1
var2<-"red"
(var1==1)&(var2=="red") #& indicates and
(var1==1)&(var2=="green")
(var1==1)|(var2=="red")#| means or
(var1==1)|(var2=="green")
#differentially expressed genes, fold change and p value both criteria have to be used with & symbol
#gene expression up regulated or down regulated with | symbol

#if-else statements 
if (num1==num2)
{
print("number 1 is equal to number 2")
}
else
{
print("number 1 is not equal to number 2")
}
#complicated applications such as if it is greater than the threshold value then print this plot and vice versa

#logical way to process the data first then put it down as code 

#creating a function 
f1<-function()
{
  print("hello world")
}
f1()

f2<-function(x,y)
{
  val<-x+y
  return(val)
}
f2(1,2)

#actvity2
my_function <- function(x,y) {
if (x>y)
{
  val<- x^2
  return(val)
} else
{
  val<-y^3
  return(val)
}}
my_function(1)
my_function(1,2)

#activity3
f3<-function(x){
random <- sample(1:5, 1)
if (x==random)
{
print ("these 2 values are the same")
} else
{
print(random)
print("These values are not the same")
}}
f3(2)

#own activity1
tax<-function(x){
  if (x>10000)
  {
    tax<- 0.3*x
    print("the person needs to pay")
    return(tax)
  }
  else {
    tax2<- 0.15*x
    print("the person needs to pay")
    return(tax2)
  }
}
tax(20000)
tax(1000)

#0wn activity2
F1<-function(a,b,c,d,e){
  m<- a*b
  s<-c+m+d
  d<-s/e
  print("The value obtained is")
  return(d)
}
F1(1,2,3,4,5)
F1(167,182,196,159,1804)

