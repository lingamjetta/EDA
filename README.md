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
