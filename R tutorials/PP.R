

ANOVA

tyre <- read.csv("practicas/tyre.csv")
head(tyre)


library(ggplot2)
library(dplyr)
install.packages("car")
library(car)

color<- c("beige","pink","aquamarine","lavender")

#BOXPLOT
ggplot(tyre, aes(x= Brands, y= Mileage)) + geom_boxplot(aes(fill = Brands)) 

ggplot(tyre, aes(x= Brands, y= Mileage)) + geom_boxplot(aes(), fill = color) + labs(fill= "Brands")
                                                                                  
ggplot(tyre, aes(x= Brands, y= Mileage)) + geom_boxplot() + scale_fill_manual(values=c("beige","pink","aquamarine","lavender")) 
  
ggplot(tyre, aes(x= Brands, y=Mileage)) + geom_point(aes(colour = Brands))
                                                  

ggplot(tyre, aes(x= Brands, y=Mileage)) + geom_col(aes(fill= Brands))
  
#Labels
ggplot(tyre, aes(x= Brands, y= Mileage)) + geom_boxplot(aes(fill = Brands)) + labs(x="Gomas", y="Km")

#Themes
ggplot(tyre, aes(x= Brands, y= Mileage)) + geom_boxplot(aes(fill = Brands)) + labs(title= "Gomas en Puerto Rico", x="Gomas", y="Km", fill= "Tire Brands") 
+ theme(plot.title = element_text(size = 30,
                                                                                           face="bold",
                                                                                           hjust = 0.9,
                                                                                           color = "limegreen")) + theme(axis.title.y = element_text(size = 14, 
                                                                                                                                                     face= "bold"),
                                                                                                                         axis.text.y = element_text(size = 12,
                                                                                                                                                    face= "bold")) + theme(axis.title.x = element_text(size=14,
                                                                                                                                                                                                        face="bold"),
                                                                                                                                                                            axis.text.x = element_text(size = 12,
                                                                                                                                                                                                       face = "plain")) + theme(legend.title=element_text(size = 14,
                                                                                                                                                                                                                                                          face="plain",
                                                                                                                                                                                                                                                          color = "blue")) + theme(axis.title.y = element_text(size = 14, face= "bold")) + theme(axis.title.y = element_text(size = 14, face= "bold")) + theme_bw()



