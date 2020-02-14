library(dplyr); library(tidyverse)
x <- read.csv("C:/Users/Yashar/Desktop/Data Science Bootcamp/R programming/Week2/bina_az.csv",encoding = "UTF-8")
x %>% glimpse()


#1 -4 #when applying geometric smoothing it tries to create average method of regression with 
#confidence interval(se=FALSE removes that confidence interval)
ggplot(data = x,aes(x=sahe,y=qiymet))+
  geom_point(aes(color=kupca,size=otaq)) + facet_grid(~nov) + geom_smooth(se=F)

#5
ggplot(data=x,mapping = aes(x=qiymet,fill = kupca))+
  geom_histogram(alpha = 0.5,color = "black")
