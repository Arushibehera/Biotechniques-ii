#creating scatter plots-used for large number of data to visualize the data 
data(mtcars)#choosing the data
View(mtcars)#seeing the data 
scatter.smooth(x=mtcars$mpg, y=mtcars$disp, main="Disp~mpg")#creating scatter plot and giving it a heading

#calculating correlation for selected variables 
cor.test(mtcars$mpg,mtcars$disp)
#different types of correlation exist, pearson is normal distribution 
corr<-cor.test(mtcars$mpg,mtcars$disp)#naming the correlation data
#correlation data has several factors, specified values are called for 
corr
corr$p.value
corr$conf.int
corr$estimate#this is the coefficient 

install.packages("corrplot")
library(corrplot)
#gives correlation coefficient calculated for all the variables 
corrplot(cor(mtcars))

#Activity 1
data()
data("USArrests")
corrplot(cor(USArrests))
correlation<-cor.test(USArrests$Murder,USArrests$Assault)
correlation
correlation$p.value
correlation$estimate

#conducting t test 
#code for categorical data, which can be divided into groups that can be compared statistically 
data(sleep)
t.test(extra~group, data=sleep)
#code for comparing a set with a specific value provided 
data(trees)
t.test(trees$Girth, mu=5)

#Activity 2
md<-data.frame(
  age=c(24,47,29,13,2,86,99,35,52,70),
  wc=c(50,39,43,60,25,17,8,49,35,21)
)
#code for comparing two given sets 
tvalue<-t.test(md$age, md$wc)
tvalue
tvalue$p.value

#ANOVA
#categories are made and analysis is done 
data("PlantGrowth")
aovvalues<-aov(weight~group, data=PlantGrowth)       
aovvalues #does not give the actual results 
summary(aovvalues) #gives the values needed in a presentable format
#Tukey test
TukeyHSD(aovvalues)

#Activity 3 
md1<- data.frame(
  side=c(13,27,48,29,36,28,59,27,38,29),
  group=c("1","2","3","1","2","3","1","2","3","1"),
  volume=c(35,69,86,67,25,93,46,82,87,83)
)
aovres<-aov(volume~group, data=md1)
summary(aovres)
TukeyHSD(aovres)

md2<- data.frame(
  num=rnorm(12),
  group=rep(c("a","b","c"), each=4),
  volume=c(35,69,86,67,25,93,46,82,87,83,67,90)
)
aov<-aov(num~group, data=md2)
aov
summary(aov)
tukey<-TukeyHSD(aov)
tukey

lm1<-lm(dist~speed, data=cars)
lm1
summary(lm1)
lm2<- lm(mpg ~ disp + qsec, data=mtcars)
lm2
summary(lm2)

#final activity 
data()
data("ChickWeight")
names(ChickWeight)
#Significant difference between the weights of the chicks due to different diets being fed on the 18th day
#creating a subset for weights measured only on the 18th day
library(dplyr)
ss<-filter(ChickWeight, Time==18)
ss

#using the subset for anova analysis 
anovar<-aov(weight~Diet, data=ss)
anovar
summary(anovar)
#result-there is significant difference between atleast 2 of the diets 
TukeyHSD(anovar)
#result-the only significant difference is observed between diet 3 and diet 1 
#plot for hypothesis 
boxplot(weight~Diet,data=ChickWeight,
        main="Weight by Diet type",
        xlab="Diet type",      
        ylab = "Weight",      
        col = c("red", "blue","green","yellow"))

