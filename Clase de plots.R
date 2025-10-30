

#barra
data("DNase")
head(DNase,3)



mean_density<- aggregate(density ~ conc, data = DNase, FUN = mean)
mean_density


barplot(
  height = mean_density$density,
  names.arg = mean_density$conc,
  col = "lightblue",
  border= "gray30",
  main = "Mean DNase I Activity by Concentration",
  xlab= "Concentration (mg/mL)",
  ylab = "Mean Optical Density",
  las = 2,
  cex.names = 0.8
)

barplot(
  height = mean_density$density,
  names.arg = mean_density$conc,
  col = "lightblue",
  border= "gray30",
  main = "Mean DNase I Activity by Concentration",
  xlab= "Concentration (mg/mL)",
  ylab = "Mean Optical Density",
  las = 1,
  cex.names = 0.8,
  horiz= TRUE
)

#linear
data (co2)
head (co2, 5)

plot(
  co2 ~ time(co2),
  type= "l",
  col= "green",
  lwd = 2,
  xlab = "Year",
  ylab = "CO2 Concentration (ppm)",
  main = "Atmospheric CO2 Concentration (1958-1998)"
)

co2_data <- data.frame(
  time = as.numeric(time(co2)),
  co2= as.numeric(co2)
)

co2_data


spearman_result <- cor.test(
  co2_data$time,
  co2_data$co2,
  method = "spearman",
  exact = FALSE
)


spearman_result

shapiro.test(co2_data$co2)


plot(
  co2 ~ time(co2),
  type= "l",
  col= "#bcbddc",
  lwd = 2,
  xlab = "Year",
  ylab = "CO2 Concentration (ppm)",
  main = "Atmospheric CO2 Concentration (1958-1998)"
)

abline(lm(co2_data$co2 ~ co2_data$time), col= "#756bb1", lwd = 2, lty = 2)


library(readxl)
coronary<-read_excel("practicas/coronary.xlsx")
coronary
head(coronary,3)

plot(
  coronary$dbp ~ coronary$chol,
  type = "p",
  col = "#e34e33",
  lwd= 2,
  xlab= "Total Cholesterol (mmol/L)",
  ylab= "Diastolic Blood Pressure (mmHg)",
  main= "Relationship between Cholesterol and Diastolic BP",
  pch = 25
)


spearman_result <- cor.test(
  coronary$chol,
  coronary$dbp,
  method = "spearman",
  exact = FALSE
)

spearman_result


shapiro.test(coronary$chol)
shapiro.test(coronary$dbp)


abline(lm(dbp ~ chol, data = coronary), col = "#31a354", lwd = 3, lty = 2)

coronary <- coronary[order(coronary$age), ]
plot(
  coronary$age, coronary$chol,
  type = "o",
  col= "lightblue",
  lwd = 2,
  xlab="Age (years) ",
  ylab= "Cholesterol (mmol/L)",
  main = "Cholesterol vs Age"
)


hist( coronary$chol,
      main = "Distribution of Cholesterol",
      xlab = "Cholesterol (mmol/L)",
      col = "pink",
      border = "white",
      breaks = 20,
)


boxplot(coronary$chol,
        main= "Cholesterol Levels",
        ylab= "Cholesterol (mmol/L)",
        col = "lightgreen",
        border = "darkgreen"
)


boxplot(sbp ~ gender,
        data= coronary,
        main= "Systolic Blood Pressure by Age Group",
        xlab= "Age Group",
        ylab = "Systolic BP (mmHg)",
        col = "lightblue",
        border= "darkblue")


anova_model <- aov(sbp ~ gender, data= coronary)
summary(anova_model)

shapiro.test(residuals(anova_model))

bartlett.test(sbp ~ gender, data = coronary)



### Continuación

library(ggplot2)
library(dplyr)

tvshows <- read.csv("practicas/view.csv")
head(tvshows)

ggplot(data = tvshows)

