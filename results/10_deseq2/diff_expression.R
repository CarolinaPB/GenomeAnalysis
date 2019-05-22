library(data.table)
library(matrixStats)
library(stats)
library(gplots)
library(DESeq2)

# Read HTSeq data
cs15_fore <- read.table("/Users/Carolina/Documents/GitHub/GenomeAnalysis/results/9_htseq_count/cs15_fore_htseq_results.txt", head=FALSE)
cs15_hind <- read.table("/Users/Carolina/Documents/GitHub/GenomeAnalysis/results/9_htseq_count/cs15_hind_htseq_results.txt", head=FALSE)
cs16_fore <- read.table("/Users/Carolina/Documents/GitHub/GenomeAnalysis/results/9_htseq_count/cs16_fore_htseq_results.txt", head=FALSE)
cs16_hind <- read.table("/Users/Carolina/Documents/GitHub/GenomeAnalysis/results/9_htseq_count/cs16_hind_htseq_results.txt", head=FALSE)
cs17_fore <- read.table("/Users/Carolina/Documents/GitHub/GenomeAnalysis/results/9_htseq_count/cs17_fore_htseq_results.txt", head=FALSE)
cs17_hind <- read.table("/Users/Carolina/Documents/GitHub/GenomeAnalysis/results/9_htseq_count/cs17_hind_htseq_results.txt", head=FALSE)

total <- read.table("/Users/Carolina/Documents/GitHub/GenomeAnalysis/results/9_htseq_count/htseq_results.txt", head=FALSE)


# Rename columns
names(cs15_fore)[2] <- "FL_15"
names(cs15_hind)[2] <- "HL_15"
names(cs16_fore)[2] <- "FL_16"
names(cs16_hind)[2] <- "HL_16"
names(cs17_fore)[2] <- "FL_17"
names(cs17_hind)[2] <- "HL_17"

# Merge the data frames
countData <- merge(cs15_fore,cs15_hind,by="V1")
countData <- merge(countData,cs16_fore,by="V1")
countData <- merge(countData,cs16_hind,by="V1")
countData <- merge(countData,cs17_fore,by="V1")
countData <- merge(countData,cs17_hind,by="V1")

# Rename the first columns
names(countData)[1] <- "Genes"

# new dataframe that only contains the extra information
#extra_info <- countData[c(1,2,3,4,5),]

# Remove extra information
countData <- countData[-c(1,2,3,4,5),]
countData <- data.frame(row.names =countData[,1], FLCS15=countData[2], FLCS16=countData[3], FLCS17=countData[4], HLCS15=countData[5], HLCS16=countData[6], HLCS17=countData[7])

# to change the gene names
genes_index <- read.csv2("/Users/Carolina/Documents/GitHub/GenomeAnalysis/code/Genes_index.csv", header = TRUE, sep=",")

# check if the names are the same (in the same order)
print(genes_index$name == row.names(countData))

# add column with gene names
countData <- cbind(countData,genes_index$blast_name)

# remove rows where all the counts are zero
countData <- countData[apply(countData[c(1,4)], 1, function(x) !all(x==0)),]

#vector_genes <- as.vector(genes_index$blast_name)
#rownames(countData) = make.names(vector_genes, unique=TRUE)

# change row names
rownames(countData) = make.names(countData$`genes_index$blast_name`, unique = TRUE)

# remove the extra column with row names
countData=countData[c("FL_15","HL_15","FL_16","HL_16","FL_17","HL_17")]

countData.matr <- as.matrix(countData)

zScoreMatrix <- (countData.matr-rowMeans(countData.matr))/(rowSds(as.matrix(countData.matr)))[row(countData.matr)]


# remove NaN
#zScoreMatrix <- na.omit(zScoreMatrix)

row.clus <-hclust(dist(zScoreMatrix))
scaleBWR <- colorRampPalette(c("blue","white","red"), space="rgb")(10)

par(mar=c(1,1,1,1))
heatmap.2(zScoreMatrix, Rowv = as.dendrogram(row.clus),Colv = NA, col=scaleBWR,  density.info = "none", trace = "none", margins = c(7,10))


