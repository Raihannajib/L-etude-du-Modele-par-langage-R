
#Classification ascendante hiérarchique


#centrage réduction des données
data.cr <- scale(elementsDataWithCO,center=T,scale=T)
#matrice des distances entre individus
d.data <- dist(data.cr)
#critère de Ward
#method = « ward.D2 »
#utilisant le carré de la distance
cah.ward <- hclust(d.data,method="ward.D2")
#affichage dendrogramme
plot(cah.ward)







#Methodes des centres


#k-means avec les données centrées et réduites
#center =  nombre de groupes demandés
#nstart =  nombre d'essais avec différents individus de départ

groupes.kmeans <- kmeans(data.cr,centers=4,nstart=5)
#affichage des résultats
print(groupes.kmeans)

#découpage en 4 groupes
groupes.cah <- cutree(cah.ward,k=4)

#correspondance avec les groupes de la CAH
print(table(groupes.cah,groupes.kmeans$cluster))
