#combining all the components in the plot 
library(ggplot2)

#Activity 1

data()
data("iris")
str(iris)
library(ggplot2)
ggplot(iris, aes(Petal.Length, Petal.Width, colour=Species))+
         geom_point()+
         geom_smooth(formula=y~x, method="lm")+
  labs(x="Petal Length",
       y="Petal Width",
       title="Plot between petal dimensions measured across different species",
       subtitle="Petal length vs Petal width",
       caption="Data:iris",
       colour="Flower species")+
  scale_colour_discrete()+
  scale_x_continuous(breaks=seq(0, 7, by = 0.5))+
  coord_fixed()+
  theme_light()+
  theme(
    plot.title=element_text(angle=0, hjust=0.5, face="bold"),
    plot.subtitle=element_text(angle=0, hjust=0.5, face="italic"),
    legend.position="right",
    legend.box.background=element_rect(color="black",linewidth=1),
    legend.title=element_text(size = 10),
    legend.text=element_text(size=8),
    axis.line=element_line(linewidth=0.5),
    axis.line.x=element_line(color="blue"),
    axis.line.y=element_line(color="purple"),
    axis.title=element_text(size = 15),   
    axis.text=element_text(size = 10),
    axis.text.x=element_text(angle=90, hjust=1),    
    panel.grid.major= element_blank(),     
    panel.grid.minor = element_blank()
  )

#Activity 1
data("diamonds")
str(diamonds)
ggplot(diamonds,aes(x,y, colour=clarity, size=carat))+
  geom_point()+
  scale_colour_viridis_d()+
  scale_size_continuous()+
  facet_grid(~cut)+
  labs(x="X",
       y="Y",
       title="Plot between diamond parameters",
       subtitle="X vs Y",
       colour="Clarity",
       size="Carat")+
  theme_bw()+
  theme(
    plot.title=element_text(angle=0, hjust=0.5, face="bold"),
    plot.subtitle=element_text(angle=0, hjust=0.5),
    legend.position="bottom",
    legend.box.background=element_rect(color="black",linewidth=0.5),
    legend.title=element_text(size=8),
    legend.text=element_text(size=5),
    axis.line=element_line(linewidth=0.5, color="black"),
    axis.title=element_text(size = 10),   
    axis.text=element_text(size = 8),
    panel.grid.major= element_blank(),     
    panel.grid.minor = element_blank()
  )

#Activity 2 
data(mpg)   
ggplot(mpg, aes(x=class, y=hwy))+
  geom_violin()+
  labs(x="Class",
       y="Highway",
       title="Violin plot")+
  scale_y_continuous(breaks = seq(0, 50, by = 10), limits=c(10,50))+
  theme_classic()+
  theme(
    axis.title=element_text(size=15, color="orange"),
    axis.text.x=element_text(angle=45, hjust=1)
  )

#Activity 2 
library(dplyr)
 mpg2<-mpg %>%
   group_by(manufacturer) %>%
   mutate (avgd=mean(displ))

 ggplot(mpg2, aes(manufacturer, avgd))+
   geom_point()

#Group activity 
data()
data(diamonds)
library(ggplot2)
ggplot(diamonds, aes(x=clarity, fill=color))+
scale_fill_brewer()+
  geom_bar(position="stack",width=0.7)+
  labs(
    x="Clarity",
    y="Number of observations",
    title="Diamonds categorised based on color and clarity"
  )+
  scale_y_continuous(breaks=seq(0,16000, by=2000))+
theme_bw()+
theme(
  axis.text=element_text(size=12),
panel.grid.major = element_blank(),
panel.grid.minor = element_blank(),
)



 

  















