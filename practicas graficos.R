
p <- ggplot(tyre, aes(x= Brands, y= Mileage)) + geom_boxplot(aes(fill = Brands)) +
  theme_classic() +
  labs(title= "Tires in Puerto Rico", x="Tires", y="Kilometers", fill= "Tire Brands") +
  theme(plot.title = element_text(size = 18,
                                    face="bold",
                                    hjust = 0.5,
                                    color = "black")) +
  theme(axis.title.y = element_text(size = 14, 
                                    face= "bold"),
        axis.text.y = element_text(size = 12,
                                   face= "bold")) +
  theme(axis.title.x = element_text(size=14,
                                    face="bold"),
        axis.text.x = element_text(size = 12,
                                   face = "plain")) +
  theme(legend.title=element_text(size = 14,
                                  face="plain",
                                  color = "black")) +
  theme(axis.title.y = element_text(size = 14,
                                    face= "bold")) +
  theme(axis.title.y = element_text(size = 14,
                                    face= "bold")) +
  ylim(25,45)



#ANOVA
mod <- aov(Mileage ~ Brands, data=tyre)
summary(mod)
resid_anova <- resid(mod)
resid_anova

shapiro.test(resid_anova)
leveneTest(Mileage ~ Brands, data= tyre)
TukeyHSD(mod)


p
ggsave(filename = "boxplot.png",
       plot=p,
       width = 8, height = 6, dpi=300)
