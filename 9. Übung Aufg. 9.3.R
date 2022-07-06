install.packages("class")
library(class)

setwd("E:/Uni/bioinfo/9. Übung")
genedata <- read.csv("genedata-for-knn.csv", stringsAsFactors = F)

str(genedata)

table(genedata$Sick)

##aufg 1
gene_9.3.1 <- as.data.frame(genedata)

library(dplyr)

x <- gene_9.3.1 %>% mutate_at(vars(-"Sick"), funs(round(., 0)))

x <- as.data.frame(x)


##aufg 2

##normalization

normalize <- function(x) {
  return ((x - min(x)) / (max(x) - min(x)))
}

norm.gene <- as.data.frame(lapply(genedata[1:2], normalize))

norm.labels <- genedata[1:1000, 1]


knn.gene <- knn.cv(train = norm.gene, cl = norm.labels)
knn.gene


 


