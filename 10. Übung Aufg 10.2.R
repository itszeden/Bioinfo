install.packages("igraph")
library(igraph)

setwd("E:/Uni/bioinfo/10. Übung")
links <- read.csv("proteinInteractionNetworkHomoSapiensSmall.csv", as.is = T)

#link_nu <- as.numeric(unlist(links))

class(links)

nrow(links)
nrow(unique(links[,c("FROM", "TO")]))

#148

#links <- aggregate(links[,2], links[,-2], sum)


#links_ch <- as.character(links)

#g <- graph(edges = links_ch, n=148, directed = F)

#g <- make_graph( edges = links, n = max(edges), isolates = NULL, directed = F, dir = directed, simplify = T)
 

#g2 <- make_undirected_graph(links_ch, n = max(links_ch))

## 'n' is ignored for edge list with vertex names

#plot(g2)

#g1 <- graph( edges=links, n=length(links), directed=F ) 

## 'n' is ignored for edge list with vertex names






