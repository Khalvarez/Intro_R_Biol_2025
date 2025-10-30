

Clase ggplot 
28/oct

library(ggplot2)
library(dplyr)

tvshows <- read.csv("practicas/view.csv")
head(tvshows)

#1 create canvas
ggplot(data = tvshows)

#2Create axis
ggplot(data = tvshows, mapping = aes(x = GRP, y = PE))

#3 Add graph type
ggplot(data = tvshows, mapping = aes(x = GRP, y = PE)) + geom_point() + geom_smooth(method =  lm)


#4
mod <- lm(log(PE)~log(GRP),data=tvshows)
resid <- resid(mod)
shapiro.test(resid)
