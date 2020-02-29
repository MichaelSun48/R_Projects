library(ggplot2)
data(diamonds)

head(diamonds)

hist(diamonds$carat, main = "Carat Histogram", xlab = "Carat")
plot(price ~ carat, data = diamonds)
boxplot(diamonds$carat)
