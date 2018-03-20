# 4. Running the pipeline

**4.1. Clean the data**

In a typical analysis, data will be received from an Illumina sequencer, or some other type of sequencer as FASTQ files. The first requirement is to demultiplex, or sort, the raw data to recover the individual samples in the Illumina library. While doing this, we will use the Phred scores provided in the FASTQ files to discard sequencing reads of low quality. These tasks are accomplished using the **process_radtags** program.

![Alt Image Text](/Users/olirojo/Desktop/images_startack/Starksimage1.png)

Some things to consider when running this program:

-**process_radtags** can handle both single-end or paired-end Illumina sequencing.

-The raw data can be compressed, or gzipped (files end with a ".gz" suffix).

-You can supply a list of barcodes, or indexes, to **process_radtags** in order for it to demultiplex your samples. These barcodes can be single-end barcodes or combinatorial barcodes (pairs of barcodes, one on each of the paired reads). Barcodes are specified, one per line (or in tab separated pairs per line), in a text file.

-If, in addition to your barcodes, you also supply a sample name in an extra column within the barcodes file, **process_radtags** will name your output files according to sample name instead of barcode.

-If you believe your reads may contain adapter contamination, **process_radtags** can filter it out.
You can supply the restriction enzyme used to construct the library. In the case of double-digest RAD, you can supply both restriction enzymes.

-If instructed, (-r command line option), process_radtags will correct barcodes and restriction enzyme sites that are within a certain distance from the true barcode or restriction enzyme cutsite.


**4.1.1 Understanding barcodes/indexes and specifying the barcode type**

Genotype by sequencing libraries sample the genome by selecting DNA adjacent to one or more restriction enzyme cutsites. By reducing the amount of total DNA sampled, most researchers will multiplex many samples into one molecular library. Individual samples are demarcated in the library by ligating an oligo barcode onto the restriction enzyme-associated DNA for each sample. Alternatively, an index barcode is used, where the barcode is located upstream of the sample DNA within the sequencing adaptor. Regardless of the type of barcode used, after sequencing, the data must be demultiplexed so the samples are again separated. The process_radtags program will perform this task, but we much specify the type of barcodes used, and where to find them in the sequencing data. 

There are a number of different configurations possible, each of them is detailed below.

1 . If your data are single-end or paired-end, with an inline barcode present only on the single-end (marked in red):

![Alt Image Text] (/Users/olirojo/Desktop/images_startack/image2_Startack.png)

2 . If your data are **single-end** or **paired-end**, with a single index barcode (in blue):

![Alt Image Text] (/Users/olirojo/Desktop/images_startack/image3_startack.png)

Then you can specify the --index_null flag to 

**process_radstags**


3 . If your data are **single-end** with both an inline barcode (in red) and an index barcode (in blue):

![Alt Image Text] (/Users/olirojo/Desktop/images_startack/image4_startack.png)

Then you can specify the --inline_index flag to 

**process_radtags**.

4 . If your data are **paired-end** with an inline barcode on the single-end (in red) and an index barcode (in blue):

![Alt Image Text] (/Users/olirojo/Desktop/images_startack/image5_startack.png)

5 . If your data are **paired-end** with indexed barcodes on the single and paired-ends (in blue):

![Alt Image Text] (/Users/olirojo/Desktop/images_startack/image6_startack.png)

Then you can specify the --index_index flag to 

**process_radtags**.

6 . If your data are **paired-end** with inline barcodes on the single and paired-ends (in red):

![Alt Image Text] (/Users/olirojo/Desktop/images_startack/image7_startack.png)

Then you can specify the --inline_inline flag to 

**process_radtags**.


 
 
 
 













