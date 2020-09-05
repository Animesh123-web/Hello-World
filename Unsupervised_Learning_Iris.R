#Performing K-means Clustering on Iris Data
#Lets remove the ID and class column from the original Dataset
Iris.values<-Iris
Iris.values$Species<-NULL
Iris.values$Id<-NULL

#1 Lets look at the result
#Iris data set has 3 different types of species, so lets take cluster number,K=3
Results_3<-kmeans(Iris.values,3)
Results_3
#Let's find out the size of clusters
Results_3$size
# And the Cluster value
Results_3$cluster
#To chek whether clustering actually worked properly
table(Iris$Species,Results_3$cluster)
#Now lets plot graphs and analyze the clustering 
plot(Iris[c("PetalLengthCm","PetalWidthCm")],col=Results_3$cluster)
#So we found pretty good groupings between these observations
plot(Iris[c("SepalLengthCm","SepalWidthCm")],col=Results_3$cluster)
#Groupings are pretty good but there are some overlaps


#2 Lets look at the result, Let's take K=2
Results_2<-kmeans(Iris.values,2)
Results_2
#Let's find out the size of clusters
Results_2$size
# And the Cluster value
Results_2$cluster
#To chek whether clustering actually worked properly
table(Iris$Species,Results_2$cluster)
#Now lets plot graphs and analyze the clustering 
plot(Iris[c("PetalLengthCm","PetalWidthCm")],col=Results_2$cluster)
# groupings is not that good, as one variance is more
plot(Iris[c("SepalLengthCm","SepalWidthCm")],col=Results_2$cluster)
#Groupings are quite good but there are some overlaps


#3 Lets look at the result, Lets take K=4
Results_4<-kmeans(Iris.values,4)
Results_4
#Let's find out the size of clusters
Results_4$size
# And the Cluster value
Results_4$cluster
#To chek whether clustering actually worked properly
table(Iris$Species,Results_4$cluster)
#Now lets plot graphs and analyze the clustering 
plot(Iris[c("PetalLengthCm","PetalWidthCm")],col=Results_4$cluster)
#So we found pretty good groupings between these observations but some overlaps are there.
plot(Iris[c("SepalLengthCm","SepalWidthCm")],col=Results_4$cluster)
#Groupings are not hat effective and there are some overlaps


#1 Lets look at the result, Let's take K=5
Results_5<-kmeans(Iris.values,5)
Results_5
#Let's find out the size of clusters
Results_5$size
# And the Cluster value
Results_5$cluster
#To chek whether clustering actually worked properly
table(Iris$Species,Results_5$cluster)
#Now lets plot graphs and analyze the clustering 
plot(Iris[c("PetalLengthCm","PetalWidthCm")],col=Results_5$cluster)
#Groupings are not effective and there are high Overlaps
plot(Iris[c("SepalLengthCm","SepalWidthCm")],col=Results_5$cluster)
#Groupings are not effective and there are high overlaps

#So the optimum number is,K=3

