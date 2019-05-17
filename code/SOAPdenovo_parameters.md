## SOAPdenovo config specifications
Parameter|Value|Explanation|Data|
--|--|--|--
avg_ins|depends on the library used|[NCBI](https://www.ncbi.nlm.nih.gov/Traces/study/?acc=SRP111692&fbclid=IwAR0OvxtwT1ortoZ7S8W2HRwF9C7LQl9k2_p4YQlHfEwAqVER6Fix1_BHcm0)|-
reverse_seq| 0|for insert size less than 500 bp|paired-end
reverse_seq| 1| for circularizing libraries with typical insert size greater than 2 Kb|mate-pair|
asm_flags| 2| only used for scaffold assembly| paired-end
asm_flags |3|used for contig and scaffold assembly| mate-pair
rd_len_cutoff|100| the trimmed data is ~100bp|-
rank| 1| all have 1 because they'll be used at the same time during scaffold assembly|-
pair_num_cutoff| 3|cutoff value of pair number for a reliable connection between pre-scaffolds|paired-end
pair_num_cutoff| 5|cutoff value of pair number for a reliable connection| mate-pair
map_len|32|minimun alignment length between a read and a contig required for a reliable read location|paired-end
map_len|35|minimun alignment length between a read and a contig required for a reliable read location|mate-pair
q1|first file from a pair of fastq files|pair of fastq file, read 1 file should always be followed by read 2 file|mate-pair
q2|second file from a pair of fastq files|pair of fastq file, read 1 file should always be followed by read 2 file|mate-pair
q|fastq file for single reads|fastq file for single reads|paired-end

