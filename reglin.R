
#Visualisation
# install.packages("car", dependencies = TRUE)

#library(car)
#scatterplot(Mydata$CO ~ ., data=Mydata)

#acf(residuals(fit1), main="fit")

#cor.test(Mydata$TAR,Mydata$CO,method = "pearson")
#cor.test(Mydata$Nicotine,Mydata$CO,method = "pearson")
#cor.test(Mydata$WEIGHT,Mydata$CO,method = "pearson")

#for(i in 1:3){
 # cat("Cofficient de correlation partiel Bravais-Pearson entre Y et X",i,"est:",
    #  cor.test(elementsDataWithCO[,i],elementsDataWithCO[,4],method = "pearson")#,"\n")
#}

# REGRESSION MULTIPLE sTANDARISE
#install.packages("QuantPsyc")
#library(QuantPsyc)
#fit.beta <- lm.beta(fit)
#coef(fit.beta,standardized=TRUE)
#coef(fit)
#beta(fit)
cat("residus observés :",residuals(fit),"\n")
cat("La somme des carres des residus est : ", sum( fit$residuals^2 ),"\n")
cat(" le nombre de degres de libertés du residu : ", df.residual(fit))



