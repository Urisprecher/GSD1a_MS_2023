
install.packages("factoextra")
library(factoextra)


######################################################################

Data = read.csv('D:/MiguelW12/Documents/K_MEANS_DATA_T.csv', header=TRUE)
rownames(Data) <- Data$Sample
Data = subset(Data, select = -c(Sample))

df <- scale(Data)


set.seed(123)
km.res <- kmeans(df, 3, nstart = 25)


fviz_cluster(km.res, data = df, show.clust.cent=TRUE,
             ellipse=TRUE, ellipse.type="confidence", ellipse.level=0.95,
)


