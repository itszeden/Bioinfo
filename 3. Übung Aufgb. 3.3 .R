install.packages("phangorn")
library(ape)
library(phangorn)
fdir <- system.file("extdata/trees", package = "phangorn")
primates <- read.phyDat(file.path(fdir, "primates.dna"),
format = "interleaved") 
primates
distanceMatrixPrimates  <- dist.ml(primates)
UPGMA_Primates  <- upgma(distanceMatrixPrimates)
NJ_Primates  <- NJ(distanceMatrixPrimates)
plot(UPGMA_Primates, main="UPGMA")
plot(NJ_Primates, "unrooted", main="NJ")
