library(car)
library(ggplot2)
library(caret)
data(mpg)
data("mtcars")
data("diamonds")
#basic plot
str(mtcars)
str(diamonds)
str(mpg)
plot(mpg$hwy,mpg)
str(mpg)
##only exploratory data analysis
#univariable analysis contnous varable##
#histogram#
ggplot(mpg,aes(hwy))+geom_histogram(binwidth = 0.1)
#frequency plot
ggplot(mpg,aes(hwy))+geom_freqpoly(binwidth=0.3,color="Red")
#dotplot
ggplot(mpg,aes(hwy))+geom_dotplot(binwidth = 0.1)+scale_y_continuous(limits = c(0.0,0.9))
#area plot
ggplot(mpg,aes(displ))+geom_area(stat = "bin",binwidth=0.2)
#density plot
ggplot(mpg,aes(displ))+geom_density()

#ploting with descrite value
ggplot(mpg,aes(manufacturer))+geom_bar(color="red",alpha=0.5)+theme_classic()+coord_fixed(ratio = 1/2)

#bi_variant analysis cont-cont scatter plot
str(mpg)
c=ggplot(mpg,aes(x=cty,y=hwy))+geom_point(color="blue")+geom_smooth(method = "lm",color="red",linetype="dashed")
#facting and line labelng
c+geom_text(aes(label=cty),check_overlap = TRUE)+theme_classic()+facet_grid(.~year)

#lineplot
ggplot(mpg,aes(cty,color=class))+geom_freqpoly(binwidth=0.9)
ggplot(mpg,aes(cty,hwy))+geom_quantile()

#continous v/s discrete
ggplot(mpg,aes(x=class,y=hwy))+geom_boxplot()

#labeling the dotplot
ggplot(mpg,aes(x=class,y=hwy))+geom_point()+stat_summary(fun.y = "median",color="red",geom = "point")
#creating bar graph
ggplot(mpg,aes(x=class,y=hwy))+geom_bar(stat = "identity")

#both are factor
ggplot(mpg,aes(x=manufacturer,fill=class))+geom_bar(position = "identity")

#multi varient
#bivariant
b=ggplot(mpg,aes(x=cty,y=hwy,color=fl,shape=class))+geom_point()+theme_classic()+geom_text(aes(label=manufacturer),check_overlap = TRUE)+scale_shape_discrete(c(1:7))

#faceting plot
table(mpg$drv)
b+facet_grid(drv~.)

#statistical transformation
#removing the outliers from boxplot
ggplot(mpg,aes(x=class,y=cty))+geom_boxplot()+stat_boxplot(coef = 1.5)+stat_ydensity(kernel = "gaussian")

#position
ggplot(mpg,aes(x=manufacturer,fill=class))+geom_bar(position = "stack")
