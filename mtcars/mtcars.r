require(graphics)
library(reshape2)
library(ggplot2)
mtcars

carsCor = cor(mtcars[,c(1:7)])
carsCor

carsMelt = melt(carsCor, varnames = c("x", "y"), value.name= "Correlation")
carsMelt

carsMelt = carsMelt[order(carsMelt$Correlation),]
carsMelt

base = ggplot(carsMelt, aes(x=x, y=y))
# draw tiles filling the color based on Correlation
base = base + geom_tile(aes(fill=Correlation))
base
