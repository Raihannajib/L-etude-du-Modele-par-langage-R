
#Classification ascendante hi�rarchique


#centrage r�duction des donn�es
data.cr <- scale(elementsDataWithCO,center=T,scale=T)
#matrice des distances entre individus
d.data <- dist(data.cr)
#crit�re de Ward
#method = � ward.D2 �
#utilisant le carr� de la distance
cah.ward <- hclust(d.data,method="ward.D2")
#affichage dendrogramme
plot(cah.ward)







#Methodes des centres


#k-means avec les donn�es centr�es et r�duites
#center =  nombre de groupes demand�s
#nstart =  nombre d'essais avec diff�rents individus de d�part

groupes.kmeans <- kmeans(data.cr,centers=4,nstart=5)
#affichage des r�sultats
print(groupes.kmeans)

#d�coupage en 4 groupes
groupes.cah <- cutree(cah.ward,k=4)

#correspondance avec les groupes de la CAH
print(table(groupes.cah,groupes.kmeans$cluster))
