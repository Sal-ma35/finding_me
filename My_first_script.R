library(datasets)
data(mtcars)
head(mtcars, 5)
?mtcars

install.packages("ggplot2")
#library(ggplot2)
#ggplot(aes(x=disp, y=mpg,),data=mycars)+geom_point()
#load ggplot
library(ggplot2)

#scatterplot of disp against mpg
ggplot(aes(x=disp,y=mpg,),data=mtcars)+geom_point()

#CONVERT NUMERICAL VARIABLE,vs, INTO A FACTOR
mtcars$vs<-factor(mtcars$vs)
ggplot(aes(x=vs, y=mpg),data=mtcars)+geom_boxplot()
ggplot(aes(x=vs,y=mpg, fill=vs),data=mtcars)+geom_boxplot(alpha=0.8)+theme(legend.position = "none")
#the alpha value determines the transparency of the boxplot
#to plot a histogram
ggplot(aes(x=wt),data=mtcars)+geom_histogram(binwidth = 0.5)
