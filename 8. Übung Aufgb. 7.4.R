install.packages("palmerpenguins")
library(palmerpenguins)
data(package = 'palmerpenguins')

head(penguins)
head(penguins_raw)
str(penguins)
str(penguins_raw)

install.packages("factoextra")
library(factoextra)

penguin <- as.data.frame(penguins)
active_peng <- penguin[1:344, 3:6]
head(active_peng)

##PCA
activ_peng_noNA <- na.omit(active_peng) 
pca_result <- prcomp(activ_peng_noNA, scale = TRUE)

fviz_eig(pca_result)

fviz_pca_ind(pca_result,
             col.ind = "cos2",
             gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07"),
             repel = TRUE)

##k-means clustering

install.packages("cluster")
library(tidyverse)
library(cluster)
library(factoextra)

pen_df <- scale(activ_peng_noNA)
head(activ_peng_noNA)

distance <- get_dist(pen_df)

#k=2
k_m_2 <- kmeans(pen_df, centers = 2, nstart = 25)
fviz_cluster(k_m_2, data = pen_df)

#k=3
k_m_3 <- kmeans(pen_df, centers = 3, nstart = 25)
fviz_cluster(k_m_3, data = pen_df)

##k=4
k_m_4 <- kmeans(pen_df, centers = 4, nstart = 25)
fviz_cluster(k_m_4, data = pen_df)

##k=5
k_m_5 <- kmeans(pen_df, centers = 5, nstart = 25)
fviz_cluster(k_m_5, data = pen_df)

##optimal k

set.seed(123)

# function to compute total within-cluster sum of square 
wss <- function(k) {
  kmeans(pen_df, k, nstart = 10 )$tot.withinss
}

# Compute and plot wss for k = 1 to k = 15
k.values <- 1:15

# extract wss for 2-15 clusters
wss_values <- map_dbl(k.values, wss)

plot(k.values, wss_values,
     type="b", pch = 19, frame = FALSE, 
     xlab="Number of clusters K",
     ylab="Total within-clusters sum of squares")

set.seed(123)
fviz_nbclust(pen_df, kmeans, method = "wss")
