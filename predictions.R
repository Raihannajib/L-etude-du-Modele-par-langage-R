#prediction

df <- data.frame(nicotine=c(60))
predict(fit, newdata=df,interval = "prediction")
predict(fit, newdata = df,interval = "confidence")
 
#les residus
#fitted values

coResidus <- Mydata
coResidus$fitted_Ajuste <- fitted(fit)
coResidus$residus <- residuals(fit)


#Matrice de variance - covariance
vcov(fit)







