# Standardized data (using Make.Z())

#Z <- data.frame(Make.Z(elementsDataWithCO))
#ml.z <- lm(Mydata$CO ~ Mydata$TAR + Mydata$Nicotine + Mydata$WEIGHT , Z)
#ml.z
#Z

#test-fisher
anova(fit)


#Diagnostic plots
library(car)
influenceIndexPlot(fit)

## Durbin-Watson normality test
durbinWatsonTest(fit)
## Shapiro-Wilk normality test
shapiro.test(residuals(fit))


## Breush-Pagan normality test
ncvTest(fit)

##Intervalles de confiance des coefficients des parametres
confint(fit)
## Outlier
outlierTest(fit)


