#!/bin/bash
#####################################################################
#A partir de una imagen de Trinity crearemos un contenedor en Docker
#Primero conseguimos la imagen de Trinity

sudo docker pull trinityrnaseq/trinityrnaseq

#Establecemos la ruta para montar el Volumen
#Esta ruta se ha de cambiar de acuerdo al lugar donde se encuentra la carpeta Proyecto_Final_Nelly

ruta=/home/nj_pc/Escritorio/Proyecto_Final_Nelly

#Despues creamos un contenedor con la imagen de Trinity y montamos un volumen del proyecto

sudo docker run -v $ruta:/usr/local/src/Proyecto_Final -it trinityrnaseq/trinityrnaseq /bin/bash
