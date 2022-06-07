install.packages("stringr")
library(stringr)

## k=1

text <- c("ACGTTGCATGTCGCATGATGCATGAGAGCT")

pattern_1 <-  c("A", "C", "G", "T")

count_1<-str_count(text, pattern_1)
count_1
max(count_1)

names(count_1)<-pattern_1
count_1

# G kommt 9mal vor und ist das häufigste 1-mer

## k=2

text <- c("ACGTTGCATGTCGCATGATGCATGAGAGCT")
pattern_2 <- c("AT", "TA", "AC", "CA", "AG", "GA", "AA", "TC", "CT", "GT", "TG", "TT", "GC", "CG", "GG", "CC")
count_2<-str_count(text,pattern_2)
count_2
max(count_2)

names(count_2)<-pattern_2
count_2

# TG kommt 5 mal vor und ist das häufigste 2-mer

## k=3
text <- c("ACGTTGCATGTCGCATGATGCATGAGAGCT")
pattern_3 <- c("ACG", "CGT", "GTT", "TTG", "TGC", "GCA", "CAT", "ATG", "TGT", "GTC", "TCG", "CGC", "GCAC", "TGA", "GAT", "TGC", "GCA", "GAG", "AGA", "AGC", "GCT")
count_3<-str_count(text,pattern_3)
count_3
max(count_3)

names(count_3)<-pattern_3
count_3


# ATG kommt 4 mal vor und ist das häufigste 3-mer

## k=4
text <- c("ACGTTGCATGTCGCATGATGCATGAGAGCT")
pattern_4<-c("ACGT", "CGTT", "GTTG", "TTGC", "TGCA", "CATG", "ATGT", "TGTC", "GTCG", "TCGC", "CGCA", "GCAT", "ATGA", "TGAT", "GATG", "ATGC", "TGCA", "GCAT", "ATGA", "TGAG", "GAGA", "AGAG", "GAGC", "AGCT")
count_4<-str_count(text,pattern_4)
count_4
max(count_4)

names(count_4)<-pattern_4
count_4

# CATG & GCAT kommen 3 mal vor und sind die häufigsten 4-mere


## k=5
text <- c("ACGTTGCATGTCGCATGATGCATGAGAGCT")
pattern_5<- c("ACGTT", "CGTTG", "GTTGC", "TTGCA", "TGCAT", "CATGT", "ATGTC", "TGTCG", "GTCGC", "TCGCA", "CGCAT", "GCATG", "CATGA", "ATGAT", "TGATG", "GATGC", "ATGCA", "TGCAT", "ATGAG", "TGAGA", "GAGAG", "AGAGC", "GAGCT")
count_5<-str_count(text,pattern_5)
count_5
max(count_5)

names(count_5)<-pattern_5
count_5

# GCATG kommt 3 mal vor und ist das häufigste 5-mere 

## k=6
text <- c("ACGTTGCATGTCGCATGATGCATGAGAGCT")
pattern_6<- c("ACGTTG", "CGTTGC", "GTTGCA", "TTGCAT", "TGCATG", "GCATGT", "CATGTC", "ATGTCG", "TGTCGC", "GTCGCA", "TCGCAT", "CGCATG", "GCATGA", "CATGAT", "ATGATG", "TGATGC", "GATGCA", "ATGCAT", "CATGAG", "ATGAGA", "TGAGAG", "GAGAGC", "AGAGCT")
count_6<-str_count(text,pattern_6)
count_6
max(count_6)

names(count_6)<-pattern_6
count_6

# TGCATG & GCATGA kommen 2 mal vor und sind die häufigsten 6-mere

