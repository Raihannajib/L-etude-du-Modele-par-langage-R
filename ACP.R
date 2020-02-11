#Etude ACP
install.packages("FactoMineR")

library(FactoMineR)
data.ACP <- PCA(elementsDataWithCO)
summary(data.ACP)

install.packages("corrplot")
install.packages("factoextra")
library(factoextra)
library(corrplot)
fviz_eig(data.ACP,addlables=TRUE)


res <- get_pca_var(data.ACP)
corrplot(res$cos2)


fviz_pca_ind(data.ACP, col.ind = "cos2",
   gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07"),
   repel = TRUE # Évite le chevauchement de texte
)




corrplot(res$contrib,is.corr = FALSE)


