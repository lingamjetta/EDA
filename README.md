# Exploratory data analysis with ggplot2
## Introduction about ggplot2
ggplot was "grammer of graphics" it have rich methods to plot customsed plots
ggplot have two functons
1)ggplot
2)qplot "quick plot"
>ggplot have mainly 8 objects
1)data
2)aesthetics
3)geometric methods
4)statistical transformaton
5)position
6)co-ordinate system
7)scale
8)faceting
## Introduction of EDA
 Exploratory data analysis mean find the hidden patterns from data using visual methods
Data was visualised based on the type of variable 
i) Discrete 
ii) continous 
with this we have different combinations
i)univariant anlysis
ii)Bivariant analysis
### Univariant analysis
### continous variable
### Histogram 
ggplot(mpg,aes(hwy))+geom_histogram(binwidth = 0.1)
![hist](https://cloud.githubusercontent.com/assets/24644939/26559738/0f5b0c82-44cf-11e7-8317-b76ac68eef73.png)
note: if we are not add the binwidth explicitly we get an error that stat_bin '30' choose different value
### frequency plot
frequency plot is same like line plot it plot using the geom_frqplot()
ggplot(mpg,aes(hwy))+geom_freqpoly(binwidth=0.3,color="Red")


