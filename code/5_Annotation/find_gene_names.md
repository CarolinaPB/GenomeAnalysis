# Find gene names

_This assumes you have the results from Maker2 and TopHat_

Run the following [script](https://github.com/CarolinaPB/GenomeAnalysis/blob/master/code/5_Annotation/automate_gene_coordinates.R) in R

```
automate_gene_coordinates.R
```

This creates a file _genes.csv_ that contains the start base of the gene, the end base of the gene, the number of bases of the gene and the name of the predicted gene.

Make sure you have the reference genome in one line. You can use this [script](https://github.com/CarolinaPB/GenomeAnalysis/blob/master/code/5_Annotation/one_line.py) to make it one line. It creates a file named _outfile.txt_ that contains the genome in only one line.

In order to create the command line blast commands run the following [script](https://github.com/CarolinaPB/GenomeAnalysis/blob/master/code/5_Annotation/py_create_bash_blast.py):
```
py_create_bash_blast.py
```
_genes.csv_ should be in the same directory.  
It will output a file named [blast.sh](https://github.com/CarolinaPB/GenomeAnalysis/blob/master/code/5_Annotation/blast.sh). You should change the sbatch parameters.  
You can run this script:
```
sbatch blast.sh
```

This script does a command line blast search of your gene.  
It outputs one file per gene: _gene1.out_, _gene2.out_, etc.
