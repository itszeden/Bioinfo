##load the data & store it
directory <- "E:/Uni/bioinfo"
m_s_a <- file.path(directory, "human_ACTG_Isoforms.txt")
multiple_sequence_allignment <- read.table(file=m_s_a, header = F, sep = "\t")

##2. Methode: mit dataframe

## convert strings to character
M_S_A <- strsplit(multiple_sequence_allignment$V1, split = "")


x <- c()
b <- matrix(M_S_A)
msa <- as.data.frame(b)
for( i in 1:length(msa)){
  x <- c(msa, sort(table(msa), decreasing = T))
}
x
##error message..


##1.Methode:


#list of lists erstellen
Mu_Se_Al <- append(M_S_A)
## append doesn´t work

x <- c()
for (i in 1:length(M_S_A)){
  for(j in 1:length(M_S_A)){
    x <- c(M_S_A, sort(table(M_S_A), decreasing = T))
  }
}
x

