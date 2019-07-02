#!/bin/bash 
###############################################
#Para este proyecto necesitaremos instalar otros programas como:

### Bowtie2 ###

#Descargamos bowtie2 de la página https://sourceforge.net/projects/bowtie-bio/files/bowtie2/2.3.2/
###Esta versión es para linux 86_64, si necesitas otras versión puedes cambiar el link de la descarga

wget https://sourceforge.net/projects/bowtie-bio/files/bowtie2/2.3.2/bowtie2-2.3.2-legacy-linux-x86_64.zip/download && \
#Descomprimimos
unzip download
#Borramos el zip
rm download
cd ../


