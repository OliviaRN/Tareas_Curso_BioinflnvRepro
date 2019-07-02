#!/bin/bash 
###############################################
#Para este proyecto necesitaremos instalar otros programas como:

### Fastx_Toolkit ###

#Para hacer el corte con la herramienta Fastx_tools, primero hay que instalar la herramienta Fastx_Tools en docker
#Descargamos los archivos para la instalación de la página de FastxTools
#http://hannonlab.cshl.edu/fastx_toolkit/download.html

mkdir Fastx_Toolkit
cd Fastx_Toolkit
#Descargamos e instalamos las librerias
wget https://github.com/agordon/libgtextutils/releases/download/0.7/libgtextutils-0.7.tar.gz && \
wget https://github.com/agordon/fastx_toolkit/releases/download/0.0.14/fastx_toolkit-0.0.14.tar.bz2 && \
tar -xzvf libgtextutils-0.7.tar.gz  && \
tar -jvxf fastx_toolkit-0.0.14.tar.bz2  && \
cd libgtextutils-0.7 && \
./configure && \
make && \
make install && \
cd ../ && \


cd fastx_toolkit-0.0.14 && \
./configure && \
make && \
make install && \
cd ../../

ldconfig && \

##Comando prueba
fastx_uncollapser -h

