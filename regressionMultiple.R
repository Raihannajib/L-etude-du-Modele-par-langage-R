# Multiple Linear Regression 

fit <- lm(Mydata$CO~  . , data=Mydata)

fit1 <- lm(Mydata$CO~  Mydata$Nicotine , data=Mydata)

summary(fit) # show results

plot(fit)







