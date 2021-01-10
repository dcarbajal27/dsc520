## Load the ggplot2 package
library(ggplot2)
theme_set(theme_minimal())

## Set the working directory to the root of your DSC 520 directory
setwd("C:/Users/dan35/Documents/DSC520_GitRepository/dsc520")

## Load the iris data provided by R
data("iris.dat")
head(iris)

# Creating a histogram
ggplot(data  = iris, aes( x = Sepal.Length)) + geom_histogram( )

ggplot(iris, aes(x=Sepal.Length, color=Species)) + geom_histogram(fill="white", binwidth = 1)

ggplot(data  = iris, aes(x = Sepal.Length)) + geom_histogram(binwidth=1)
ggplot(data = iris , aes(x=Sepal.Length)) + geom_histogram(bins = 10) 
ggplot(iris, aes(x=Sepal.Length, color=Species)) + geom_histogram(fill="white", binwidth = 1)
ggplot(iris, aes(x=Sepal.Length, color=Species)) + geom_density( )

ggplot(data = iris, aes( x = Sepal.Length, y = Sepal.Width,shape = Species, color = Species)) + geom_point()
