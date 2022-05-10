sequences <- read.table("alignedSequencesCalmodulin.txt", header = F, sep = "\t")
sequences
names(sequences)
class(sequences)


Sequences <- t(sequences$V1)
Sequences

sequence_1 <- Sequences[,1] 
sequence_2 <- Sequences[,2]

sequence_1
sequence_2

#nchar: number character -> counts the number of characters in argument

s_1 <- nchar(sequence_1)
#Anzahl Sequenz 1

s_2 <- nchar(sequence_2)
#anzahl Sequenz 2

s_12 <- nchar(s_1 == s_2)
#Anzahl an gleichen Chractern

s_1_2 <- s_2 - s_12
#Anzahl an nicht gleichen Charactern

Percent <- s_1_2/s_2*100
Percent

#Man bekommt 97,33 raus, aber die wirkliche Übereinstimmung ist kleiner, weil die * als Übereinstimmung mit einberechnet wurden