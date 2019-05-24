# To run Maker2

Adapted from https://reslp.github.io/blog/My-MAKER-Pipeline/


### FIRST RUN ###

```
module load bioinfo-tools
module load maker

maker -CTL
```



A separate set of control files will need to be generated for each genome annotated with MAKER
* Change *maker_opts.ctl*:

```
genome=/home/carolpb/GenomeAnalysis/data/wgs_from_paper/sel2_NW_015504334_unziped.fasta
organism_type=eukaryotic

est=/home/carolpb/GenomeAnalysis/results/4_Transcriptome_Assembly_Trinity/Trinity_concat.fasta

est2genome=1
```
Run the following command in the same directory as the control files
```
maker
```

A \**.maker.output* directory will be created

### TRAINING SNAP ###
You should be on the \**.maker.output* directory

1. Extract the results from the first MAKER run:

```
gff3_merge -d sel2_NW_015504334_unziped_master_datastore_index.log
```

Creates a GFF3 file containing all the preliminary gene preditions created in the First run.

2. Generate the necessary files for training SNAP:
```
maker2zff sel2_NW_015504334_unziped.all.gff
```

This script (which comes with MAKER) will create two files: genome.ann and genome.dna which contain information about the gene sequences (such as exons and introns) as well as the actual DNA sequences.

3. Look for errors

```
> module load bioinfo-tools
> module load snap/2013-11-29

> fathom genome.ann genome.dna -validate > snap_validate_output.txt
```
I got - 72 genes, 72 OK, 43 warnings, 0 errors (with the paper data)

-----
##### If there are errors:

```
cat snap_validate_output.txt | grep "error"
```
should give something like this:
```
scaff40651: MODEL6064 16223 17246 5 + errors(1): cds:internal_stop warnings(2): split-start exon-1:short(1)
```

Do this:
```
grep -vwE "MODEL6064" genome.ann > genome.ann2
```

Rerunning fathom should now show no errors:
```
fathom genome.ann2 genome.dna -validate
```
------
4. Create the remaining input files for training SNAP
```
fathom genome.ann genome.dna -categorize 1000
fathom uni.ann uni.dna -export 1000 -plus
forge export.ann export.dna
```
Now we have everything ready to train SNAP with hmm-assembler (which comes with SNAP):

```
hmm-assembler.pl /domus/h1/carolpb/GenomeAnalysis/data/wgs_from_paper/sel2_NW_015504334_unziped.fasta . > sel2_NW_015504334_unziped.hmm
```


### SECOND RUN

* Change maker_opts.ctl:  
To base the predictions in the second MAKER run only on SNAP remove the filepaths to the protein and est evidence or set the flags for est2genome=0 and protein2genome=0 and do add the following:

```
snaphmm=/home/carolpb/GenomeAnalysis/results/6_Maker2_paper/run_1/sel2_NW_015504334_unziped.maker.output/sel2_NW_015504334_unziped.hmm #SNAP HMM file
```



* change directory to the main one where run_maker.sh and maker_otps.ctl are

```
maker
```

----

### REPEAT *TRAINING SNAP* and *SECOND RUN*

I trained SNAP twice. It's important that we don't overtrain it.

-----
### TRAIN AUGUSTUS

1. convert SNAP ZFF files to GBK files.  

Script available here: https://github.com/hyphaltip/genome-scripts/blob/master/gene_prediction/zff2augustus_gbk.pl

The script needs to be run in the directory containing the export.ann and export.dna files.

```
module load bioinfo-tools
module load maker
module load augustus

chmod +x ./zff2augustus_gbk.pl
cpan Bio::DB::Fasta
./zff2augustus_gbk.pl > augustus.gbk
```
2. split the now created augustus.gbk file into a training and a test set:

Count the number of genes:
```
grep "LOCUS" augustus.gbk| wc -l
```

For the paper data I had 28 genes.

```
perl randomSplit.pl augustus.gbk 14
```
*14* is how it will be split. In my case, 14 genes will be use to train and the other 14 will be used to test augustus.  
(randomSplit.pl comes with AUGUSTUS and is located in the scripts folder.)

```
etraining --species=human augustus.gbk.train
augustus --species=human augustus.gbk.test | tee first_training.out
```


3. Improve prediction parameters of the models using the optimize_augustus.pl script again located in the AUGUSTUS/scripts directory:

```
mkdir config
cp -r /sw/apps/bioinfo/augustus/3.2.3/rackham/config/* config/
chmod -R 0777 species/human/

optimize_augustus.pl --species=human augustus.gbk.train --AUGUSTUS_CONFIG_PATH=config
```

4. After this is done (this will take some time!) we can retrain and test AUGUSTUS with the optimized paramters and compare the results to the first run:

```
etraining --species=human augustus.gbk.train --AUGUSTUS_CONFIG_PATH=config
augustus --species=human augustus.gbk.test --AUGUSTUS_CONFIG_PATH=config| tee second_training.out
```

### LAST RUN MAKER

* Change maker_opts.ctl:

```
augustus_species=human
keep_preds=1
```

```
export AUGUSTUS_CONFIG_PATH="/home/carolpb/GenomeAnalysis/results/6_Maker2_paper/run_1/sel2_NW_015504334_unziped.maker.output/config"
```


Or add to the run_maker.sh (before the maker command) if you're running a sbatch script

Run maker for the last time:
```
maker
```

After it's done check if there are any errors:

```
less sel2_NW_015504334_unziped_master_datastore_index.log
```

It should show:
```
NW_015504334.1  sel2_NW_015504334_unziped_datastore/88/48/NW_015504334.1/       STARTED
NW_015504334.1  sel2_NW_015504334_unziped_datastore/88/48/NW_015504334.1/       FINISHED
```
