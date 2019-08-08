library(tidyverse)

x <- rnorm(10)
y <- x + 0.25 * rnorm(10)
x <- rnorm(10)

y <- x + 0.5 * rnorm(10)

ggplot(data.frame(x=x, y=y), aes(x,y)) + geom_point(size=4, color='white') + 
  geom_abline(color='white') + 
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), 
        panel.background = element_rect(color='black', fill='black'))
