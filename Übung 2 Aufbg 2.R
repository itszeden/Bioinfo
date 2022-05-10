## Aufg.2.2

sequences <- read.table("alignedSequencesCalmodulin.txt", header = F)
sequences
names(sequences)
class(sequences)
row.names(sequences) <- c("Sequenz_1", "Sequenz_2")
the_sequences <- t(sequences)
the_sequences

#i need a function that compares the each amino acid of each sequences with each other
#then i need to loop the function through all the sequences

#problem: Länge der Sequences wird als 1 und nicht 149 angezeigt
length(the_sequences)

if(sequences$Sequenz_1 !=sequences$Sequenz_2){print(sequences$Sequenz_1/sequences$Sequenz_2 * 100)}else{print("NO")}
##funktioniert nicht weil Sequencen character sind
  
  Prozent <- function(the_sequences){
    X <- length(the_sequences$Sequenz_1 != "*")
    Y <- length(the_sequences$Sequenz_2 != "*")
    X/Y * 100
  }
##funktioniert auch nicht weil Sequencen nicht als einzelne Faktoren gesehen werden % macht keinen Sinn
X/Y * 100
X
## X und Y sind 1.. d.h. man muss die Sequncen erst konvertieren, damit jeder Buchstabe als einzelner Faktor gesehen wird

A <- as.character(the_sequences$Sequenz_1)
A
B <- as.character(the_sequences$Sequenz_2)
B

Prozent <- function(the_sequences){
   X <- length(A != "*")
   Y <- length(B != "*")
   X/Y * 100
}
## Funktion funktioniert jetzt und man bekommt 100 raus

if(A != B){print(A/B * 100)}else{("NO")}
## funtioniert wieder nicht

Another_Sequenz_1 <- c("M", "A", "D", "Q", "L", "T", "E", "E", "Q", "I", "A", "E", "F", "K", "E", "A", "F", "S", "L", "F", "D", "K", "D", "G", "D", "G", "T", "I", "T", "T", "K", "E", "L", "G", "T", "V", "M", "R", "S", "L", "G", "Q", "N", "P", "T", "E", "A", "E", "L", "Q", "D", "M", "I", "N", "E", "V", "D", "A", "D", "G", "N", "G", "T", "I", "D", "F", "P", "E", "F", "L", "T", "M", "M", "A", "R", "K", "M", "K", "D", "T", "D", "S", "E", "E", "E", "I", "R", "E", "A" , "F", "R", "V", "F", "D", "K", "D", "G", "N", "G", "Y", "I", "S", "A", "A", "E", "L", "R", "H", "V", "M", "T", "N", "L", "G", "E", "K", "L", "T", "D", "E", "E", "V", "D", "E", "M", "I", "R", "E", "A", "D", "I", "D", "G", "D", "G", "Q", "V", "N", "Y", "E", "E", "F", "V", "Q", "M", "M", "T", "A", "K")
length(Another_Sequenz)
## jetzt werden alle als einzelne 149 Fakotren angezeigt

Another_Sequenz_2 <- c("M", "A", "D", "Q", "L", "T", "E", "E", "Q", "I", "A", "E", "F", "K", "E", "A", "F", "S", "L", "F", "D", "K", "D", "G", "D", "G", "T", "I", "T", "T", "K", "E", "L", "G", "T", "V", "D", "R", "S", "L", "G", "Q", "N", "P", "T", "E", "A", "E", "L", "Q", "D", "M", "I", "N", "E", "V", "D", "A", "D", "G", "N", "G", "T", "I", "D", "F", "P", "E", "F", "L", "T", "M", "M", "E", "R", "K", "M", "K", "D", "T", "D", "S", "E", "E", "E", "I", "R", "E", "A", "F", "R", "V", "F", "D", "K", "D", "G", "N", "G", "Y", "I", "S", "A", "A", "K", "L", "R", "H", "V", "M", "T", "N", "L", "G", "E", "K", "L", "T", "D", "E", "E", "V", "D", "E", "M", "I", "R", "E", "A", "D", "A", "A", "G", "D", "G", "Q", "V", "N", "Y", "E", "E", "F", "V", "Q", "M", "M", "T", "A", "K")

if(Another_Sequenz_1 == Another_Sequenz_2){print(Another_Sequenz_1 / Another_Sequenz_2 * 100)}else{print("NO")}
## funktioniert nicht, weil length > 1

X <- as.numeric(Another_Sequenz_1)
## NAs

l <- function(Another_Sequenz_1, Another_Sequenz_2){
  "A" = "A"
  "R" = "R"
  "N" = "N"
  "D" = "D"
  "C" = "C"
  "Q" = "Q"
  "E" = "E"
  "G" = "G"
  "H" = "H"
  "I" = "I"
  "L" = "L"
  "K" = "K"
  "M" = "M"
  "F" = "F"
  "P" = "P"
  "S" = "S"
  "T" = "T"
  "W" = "W"
  "Y" = "Y"
  "V" = "V"
}

same_seq <- vector(length = n)
#empty vector for the for loop

n <- 149
for(n in 149){
  same_seq[n] <- l(n)
}
same_seq
#idk what i just did
