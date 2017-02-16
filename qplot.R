install.packages("gridExtra")
library(gridExtra)
library(grid)
library(gridBase)
library(ggplot2)
getwd()
setwd("I:\\kaggle\\drivendata")
facebook=read.csv("pseudo_facebook.tsv",sep="\t",header = TRUE)
#exploratory data analysis
str(facebook)
names(facebook)
age=qplot(x=age,data=facebook,geom = "bar",main = "age of users")#most of the age above 18-30 are more

#
?qplot
qplot(x=tenure,data =facebook )

#date  of birth of the users
qplot(x=dob_day,data = facebook,xlim = c(0,31),binwidth=1,col="#00aaff")+
scale_x_continuous(limits = c(0,31),breaks = seq(0,31,1)) #most of the people are 1 date

#friend count
qplot(x=friend_count,data = subset(facebook,!is.na(gender)),col="blue",binwidth=50)+
  scale_x_continuous(limits = c(0,1500),breaks = seq(0,1500,100))+
facet_wrap(~gender,)

#box plot with   qplot
#data have outliers 
qplot(x=gender,y=friend_count,data =subset(facebook,!is.na(gender)),geom = "boxplot",main = "facebook" )+
coord_cartesian(ylim = c(0,1500))+scale_y_continuous(breaks=seq(0,1500,100))
#most of the female user have minimum 100 friends and male have 80 

#likes 
qplot(x=likes,data = subset(facebook,!is.na(gender)),color=I("blue"))+
  scale_x_continuous(limits = c(0,500),breaks = seq(0,500,10))+
scale_y_continuous(limits = c(0,15000),breaks = seq(0,15000,1000))+facet_wrap(~gender)

#dob_day v/s dob_month
qplot(x=dob_day,data =facebook,color=I("green"))+
  scale_x_continuous(breaks =1:31)+
  facet_wrap(~dob_month,ncol=3)

#age frequency plot
qplot(x=age,data = facebook,geom = "density")

#mobile likes recived based genders
qplot(x=mobile_likes,data =subset(facebook,!is.na(gender)),binwidth=100)+
  scale_x_continuous(limits = c(300,3000),breaks = seq(300,3000,100))+
  scale_y_continuous(limits = c(0,1500))+
  facet_wrap(~gender) #female got the more mobile likes
#mobile_likes_received

qplot(x=mobile_likes_received,data =subset(facebook,!is.na(gender)),binwidth=100)+
  scale_x_continuous(limits = c(300,3000),breaks = seq(300,3000,100))+
  scale_y_continuous(limits = c(0,1500))+
  facet_wrap(~gender)


#www likes
qplot(x=www_likes,data =subset(facebook,!is.na(gender)),binwidth=100)+
  scale_x_continuous(limits = c(300,3000),breaks = seq(300,3000,100))+
  scale_y_continuous(limits = c(0,1500))+
facet_grid(~gender)

#grid.arrange 
#transformation 
#Provides a number of user-level functions to work with "grid" graphics, notably to arrange multiplegrid-based plots on a page, and draw tables.
trans=qplot(x=log(friend_count),data = facebook)
sqr_trans=qplot(x=sqrt(friend_count),data = facebook)

grid.arrange(trans,sqr_trans)

#log gave the best fit for naormal distribution


