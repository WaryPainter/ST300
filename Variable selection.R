library(leaps)

reg <-lm(log(mpg) ~  horsepower + ind.horsepower + origin1 + acceleration + cylinders_grouped + mass + grouped_years, auto)
summary(reg)
anova(reg)
step(reg)



regbestlog <- regsubsets(log(mpg) ~  horsepower + ind.horsepower + origin1 + acceleration + cylinders_grouped + mass + log(displacement) + grouped_years, auto)
summary(regbestlog)

regfinal <- lm(log(mpg) ~ horsepower + ind.horsepower + origin + acceleration + cylinders + mass + grouped_years1, auto)
summary(regfinal)

plot(regfinal)

aovcat <- lm(log(mpg) ~ origin1 + cylinders_grouped + grouped_years, auto)
anova(aovcat)

