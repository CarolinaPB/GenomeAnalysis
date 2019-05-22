# import the gff file
genome_gff<- read.table("/Users/Carolina/Documents/GitHub/GenomeAnalysis/results/6_Maker2_paper/run_1/sel2_NW_015504334_unziped.maker.output/sel2_NW_015504334_unziped_nofasta.all.gff", header=FALSE, sep="\t")

# import the file with all the read counts
total <- read.table("/Users/Carolina/Documents/GitHub/GenomeAnalysis/results/9_htseq_count/htseq_results.txt", head=FALSE)

# remove extra information lines
total = total[-c(130,131,132,133,134),]

# conver to dataframe
genome_df <- data.frame(rbind(genome_gff))

# only keep rows that have "Gene"
genome_df <-subset(genome_df, V3=="gene")

# only keep the base start and end point of the gene and the gene name
genome_df <- genome_df[c("V4","V5","V9")]

# remove "ID=" fr
no_id <- gsub("ID=", "\\1", genome_df$V9)
#no_name <- gsub(";*", "\\1", no_id)

# dataframe with the gene start and end point and with ID
genome_df <-cbind(genome_df[c("V4","V5")], no_id)

# sort by gene ID
genome_df_sorted <- with(genome_df,  genome_df[order(no_id) , ])
total_sorted <- with(total, total[order(V1),])

# Add new column -> gene end point - gene start = number of bases of the gene
genome_df_sorted$bases <- (genome_df_sorted$V5 -genome_df_sorted$V4 +1)

# rename columns
names(genome_df_sorted) <-c("start", "end", "gene", "bases")

# rearrange columns
genome_df_sorted <- genome_df_sorted[c("start", "end", "bases", "gene")]

# Add column gene name
genome_df_sorted$gene_name <- total$V1

# remove column gene
genome_df_sorted <- genome_df_sorted[c("start", "end", "bases", "gene_name")]

write.table(genome_df_sorted,sep=",", file = "genes.csv", col.names=FALSE)

