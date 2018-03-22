
#!/bin/bash

#Este script es para averiguar si el pez cebra,  tiene una proteína priónica similar a la forma humana.


# PASO 1. Definir el WD

 cd /Users/olirojo/Desktop/BioinfinvRepro/pezcebra

# Para instalar BLAST en la computadora

docker pull biocontainers/blast

# PASO 2. Para correr BLAST

# blastp muestra a ayuda para BLAST
### docker run biocontainers/blast   Permite a docker identificar el contenedor correcto
#### blastp -help  corresponde al comando que quiero usar para el contenedor 

docker run biocontainers/blast blastp -help

# PASO 3. Descargar la secuencia de priones humanos en formato FASTA de la base de datos UniProt

wget http://www.uniprot.org/uniprot/P04156.fasta

# PASO 4. Descargar la base de datos de pez cebra y descomprimir, desde NCBI

curl -O ftp://ftp.ncbi.nih.gov/refseq/D_rerio/mRNA_Prot/zebrafish.1.protein.faa.gz
gunzip zebrafish.1.protein.faa.gz

# PASO 5. Preparar  la base de datos

##Montar el volumen “data”  para tener disponibles los archivos y los resultados de BLAST. Generando así un enlace entre el lugar de trabajo donde se almacenan los archivos descargados y / data / dentro del contenedor. 

miruta= /Users/olirojo/Desktop/BioinfinvRepro/pezcebra

docker run -v $miruta:/data/ biocontainers/blast makeblastdb -in zebrafish.1.protein.faa -dbtype prot

## PASO 6. Para el alineamiento final (Con la secuencia de priones humanos) y guardar los resultados en el archivo results.txt

 docker run -v $miruta:/data/ biocontainers/blast blastp -query P04156.fasta -db zebrafish.1.protein.faa -out results.txt

