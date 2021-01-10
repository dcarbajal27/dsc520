# Assignment: Exercise 5
# Name: Carbajal, Daniel
# Date: 2020-12-20

## Load the ggplot2 package
library(ggplot2)
theme_set(theme_minimal())

## Load the `data/r4ds/heights.csv` to
CommSurvey_df <- read.csv("acs-14-1yr-s0201.csv")
head(CommSurvey_df)
str(CommSurvey_df)
nrow(CommSurvey_df)
ncol(CommSurvey_df)

## Create a histogram of the `HSDegree` variable using `geom_histogram()`
ggplot(CommSurvey_df, aes(HSDegree)) + geom_histogram()

## Create a histogram of the `HSDegree` variable using `geom_histogram()`
ggplot(CommSurvey_df, aes(HSDegree)) + geom_histogram(bins = 10) + geom_density()


result <- CommSurvey_df$HSDegree
summary(result)

## Create a histogram of the `HSDegree` variable using `geom_histogram()`
my_plot <- ggplot(CommSurvey_df, aes(HSDegree)) + geom_histogram(aes(y = ..density..),colour = "black", fill = "white") + ggtitle("Number of Counties vs. Percentage of High School Diplomas") + xlab("High School Diplomas (Percentage)") + ylab("Number of Counties (count)") 
my_plot + stat_function(fun = dnorm, args = list(mean = mean(CommSurvey_df$HSDegree, na.rm = TRUE),sd = sd(CommSurvey_df$HSDegree, na.rm = TRUE)),colour = "blue", size = 1)
library(e1071)
probplot(CommSurvey_df$HSDegree, qt, df=100)

library (pastecs)
stat.desc(CommSurvey_df$HSDegree, basic=TRUE, desc=TRUE, norm=TRUE)


