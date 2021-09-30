mydata = read.csv('C:\\Users\\Craig\\Documents\\BrunelOnedrive\\CS3002\\Lab2\\spaeth_01.csv', sep=",")
plot(mydata)

#optional: preprocessing data
mydata = na.omit(mydata) # deletes missing data
mydata = scale(mydata) # standardising variables

# generate a matrix of E distances

d<- dist(mydata, method = "euclidean")  # distance maxtrix

#hclust (Hierarchical Clustering) to perform clustering using 
#average link clustering

fit <- hclust(d, method="average")
plot(fit) # plots dendogram

Hgroups <- cutree(fit, k=5) # cut tree 5 clusters

rect.hclust(fit, k=5, border="red") # red borders around the clusters
plot(mydata, col=Hgroups) # scatterplot with assigned clusters as colours

#editing cluster numbers testing:
Hgroups2 <- cutree(fit, k=3) # cut tree 5 clusters 
plot(mydata, col=Hgroups2)
Hgroups3 <- cutree(fit, k=4) # cut tree 5 clusters 
plot(mydata, col=Hgroups3)
#moving onto kmeans

fit <- kmeans(mydata, 5) #5 cluster solution
aggregate(mydata,by=list(fit$cluster),FUN=mean) # wish it went into more detail on this line
Kgroups = fit$cluster
plot(mydata, col=Kgroups)
source("C:\\Users\\Craig\\Documents\\BrunelOnedrive\\CS3002\\Lab2\\WK_R.r") # should change these to relative paths at some point
wk = WK_R(Kgroups, Hgroups) # original Hgroups was a 5 cut






