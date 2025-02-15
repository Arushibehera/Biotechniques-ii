#data visualization using ggplot2

#loading the library ggplot2
library(ggplot2)

#3 main components-bare minimum are data, mapping, layers in ggplot2

#best data is input in the form of data frame 
#loading the data 
data(mpg)
#about the data 
str(mpg)
summary(mpg)
#specifying the data for ggplot
ggplot(data=mpg)

#adding mapping component, pair parts of data as graphical attributes 
ggplot(data=mpg, mapping=aes(x=cty, y=hwy))#data and mapping terms can be removed

#adding layers component 
ggplot(mpg, aes(cty,hwy))+
  geom_point()+#for scatter plot
  geom_smooth(formula=y~x, method="lm")#for smooth trend line 

#adding labels 
ggplot(mpg,aes(cty,hwy))+
  geom_point()+
  labs(x="City mpg",
       y="Highway mpg",
       title="City mpg vs Highway mpg")

#adding scale
ggplot(mpg,aes(cty,hwy, color=class))+
  geom_point()+
  scale_colour_discrete()

ggplot(mpg,aes(cty,hwy, color=class))+
  geom_point()+
  scale_colour_viridis_d()

ggplot(mpg,aes(cty,hwy, color=class))+
  geom_point()+
  scale_colour_viridis_d(option="F")

?viridis

#adding facets
ggplot(mpg,aes(cty,hwy))+
  geom_point()+
  facet_grid(year~drv)

#using coordinates
ggplot(mpg,aes(cty,hwy))+
  geom_point()+
  coord_fixed()#1:1

#adding theme
ggplot(mpg, aes(cty,hwy,colour=class))+
  geom_point()+
  theme_bw()#built in customisation 

ggplot(mpg, aes(cty,hwy,colour=class))+
  geom_point()+
  theme_minimal()+
  theme(
    legend.position="top",
    axis.line=element_line(linewidth = 0.75),
    axis.line.x.bottom=element_line(colour = "blue"),
    axis.title=element_text(size = 17),   
    axis.text=element_text(size = 12),    
    panel.grid.major= element_blank(),     
    panel.grid.minor = element_blank()  
  )

#Activity, repeating and adding more customization 
ggplot(data=mpg, mapping=aes(x=cty,y=hwy, colour=class, size=cyl))+
  geom_point(alpha=0.7)+
  labs(x="City", 
       y="Highway", 
       title="Highway vs City")+
  scale_colour_viridis_d(option="B")+
  facet_grid(year~drv)+
  coord_fixed(0.5)+
  theme_bw()+
  theme(
    panel.grid.major=element_blank(),
    panel.grid.minor=element_blank(),
    plot.title=element_text(angle=0,hjust=0.5, face="bold"),
    axis.line=element_line(linewidth=0.5),
    axis.line.x=element_line(colour="green"),
    axis.line.y=element_line(color="blue"),
    axis.title=element_text(size=15),
    axis.text=element_text(size=8),
    legend.position="right",
)

?theme
