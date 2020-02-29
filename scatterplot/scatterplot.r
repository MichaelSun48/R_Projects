library(dslabs)
library(ggplot2)

#Graph object with data
# sp = ggplot(data = murders)
# class(sp)
# sp
# Make this aesthetic global scope, so all further iterations of SP have these aesthetics
sp = ggplot(data=murders, aes(x = population/10^6, y = total, label = abb))

#geometric layer: scatter plot
sp = sp + geom_point(size = 1)

#label points with the "abb" from the murders dataset
sp = sp + geom_text(nudge_y = 0.08, aes(color = region))

sp = sp + scale_x_log10() + scale_y_log10()
sp

sp = sp + xlab("Population in millions (log scale)") + ylab("Total number of muders (log scale)")

sp
