**1. ¿Cuáles son las principales variantes del método de laboratorio para generar mis datos y cuándo es más útil cada una?**

- La longitud de las reads todavía tiene importantes implicaciones bioinformáticas, ya que los algoritmos de ensamblaje optimizados para lecturas largas son fundamentalmente diferentes a los de lecturas cortas.

- Entre las primeras decisiones al comenzar, un proyecto de secuenciación de genoma es la elección de la plataforma de secuenciación, el tipo y la cantidad de datos de secuencia para generar.

- Además, existen diferentes aspectos que pueden afectar la capacidad de reconstrucción de la secuencia original. 

De entre todos estos factores destacan los siguientes (Kisand et al.; 2013):• La tecnología de secuenciación: Illumina, 454, SOLID, PacBio, Sanger.

• El tipo de librería utilizada:- Single-end - Paired-end- Mate-pairs
• Los algoritmos de ensamblado y la capacidad de éstos para llevar a cabo la corrección de errores y la detección de secuencias repetidas.
• El rendimiento computacional: tiempo de ejecución y consumo de memoria.


**2 . De novo ¿Qué limitantes y posibles fuentes de error puede presentar este método (en el laboratorio o la bioinformática)?**

De acuerdo con Monya Baker (2012), existen algunas de las siguientes limitantes y fuentes de error en el Ensamble de novo:

- Cuando el genoma de una especie se reagrupa por primera vez, nadie sabe qué es real o qué es lo que falta. En general, cuanto más grande sea el genoma, más errores habrá.

- Los secuenciadores de próxima generación pueden leer pares de bases a un costo costo mucho menos que usando la secuenciación de Sanger, pero las lecturas son mucho más cortas. Por lo que el reto consiste en ¿Cómo ensamblar genomas de alta calidad y cómo reconocerlo?.

- Los errores en el ensamblaje ocurren por muchas razones. A menudo se descartan incorrectamente repeticiones; o se llegan a hacer uniones u orientaciones en sitios equivocados y que pueden llegar a eliminar genes conservados entre diferentes organismos.

- Cada proyecto de ensamblaje es único en términos de estructura de datos generada y el genoma objetivo difiere, por ejemplo, en tamaño, composición de bases, contenido repetido. Las secuencias repetitivas, los polimorfismos, los datos faltantes y los errores que  eventualmente limitan la longitud de los contigs que los ensambladores pueden construir. 

- Cuando un ensamblador encuentra lecturas ligeramente diferentes entre sí, debe decidir si las lecturas se derivan del mismo locus o de regiones repetitivas. Las suposiciones erroneas pueden provocar que los ensambladores eliminen genes, particularmente miembros de familias de genes estrechamente relacionadas.

- Saber que las lecturas pareadas (pair-end) se generaron a partir de la misma pieza de ADN puede ayudar a vincular contigs en 'scaffolds', ordenando conjuntos de contigs con espacios intermedios. Los datos de lectura pareada también pueden indicar el tamaño de las regiones repetitivas y qué tan separados están los contigs. 

- En ausencia de un genoma de referencia de alta calidad, los ensamblajes de novo del genoma a menudo se evalúan sobre la base del número de scafolds y contigs necesarios para representar el genoma, la proporción de lecturas que se pueden ensamblar, la longitud de contigs y scaffolds en relación con el tamaño del genoma.

- El número de "misassemblies" obtenidos en los contigs ensamblados puede ser debido a errores cometidos durante el proceso de secuenciación o a la formación de quimeras entre las lecturas. 

**¿Qué puede hacerse para amortiguarlos?**

-Los secuenciadores están equipados con filtros computacionales para eliminar secuencias mal leídas, así como aquellas que contienen secuencias de artefactos de preparación de bibliotecas y bacterias contaminantes, pero estos filtros no son perfectos.

-Algunas información previa es útil, como el tamaño esperado del genoma, el contenido de GC y el contenido de regiones repetitivas, ya que ayudan a elegir la mejor estrategia a seguir. Estos datos pueden ser inferidos a partir de secuencias de organismos relacionados.

-Los investigadores deben asegurarse de minimizar los errores de secuenciación antes de que ésta se realice, tratando de obtener una cobertura lo suficientemente alta y obtener reads suficientemente largas.

-Encontrar formas de evaluar y mejorar ensambladores. 

-Ejecutar múltiples ensamblajes varias veces obtener el mejor ensamblaje.

-Buscar ayuda. La ejecución de un ensamblador requiere una experiencia computacional considerable. "El desarrollador de software normalmente sabe cómo usarlo mejor". Los investigadores también necesitan ayuda para planificar y crear sus bibliotecas.

-Tomar el transcriptoma, también. El análisis de regiones transcritas puede mejorar los ensambles. "Cada proyecto de genoma de novo debe tener un proyecto RNA-seq paralelo".

-Ser realista acerca de los recursos informáticos. El genoma puede ser demasiado grande para la memoria de la computadora.

-Haz lo mejor que puedas y luego refínalo.


**3. ¿El muestreo requiere algún diseño específico? Por ejemplo, si se quiere secuenciar un genoma de novo ¿qué individuo sería ideal? Si trabajo con trascriptomas, ¿cómo afecta el tejido, la edad, las condiciones, etc. mi muestreo?**


Gene Robinson, entomóloga de la Universidad de Illinois  menciona que "Se necesitan saber 2 cosas sobre el ensamblaje de novo:
¿Cuánto del genoma se estima que se incluirá en el ensamblaje? Y ¿Cuántas piezas diferentes no conectadas involucra el ensamblaje?. Esos parámetros indican qué tan fácil será realizar análisis comparativos, funcionales y evolutivos en una secuencia de genoma.

- La precisión e integridad de un conjunto de genoma depende no solo de los programas de computadora y las tecnologías de secuenciación, sino también de las características del genoma que se ensamblará.

- Las soluciones que son rutinarias para pequeños genomas bacterianos son imposibles o poco prácticas para los eucariotas.


**4. Menciona al menos dos softwares principales que se utilicen para realizar la parte medular de los análisis bioinformáticos de este tipo de análisis (e.g. si es ensamblado de novo con qué se ensambla, no con qué se hace el pre-procesamiento) y cuáles son los pros y contras de cada uno.**

Existe una cantidad de software disponible para el ensamblaje de novo de los datos de secuenciación de genoma.

- El ensamblador de novo Velvet, está basado en la construcción de grafos de Bruijn. El ensamblador Velvet puede ensamblar cualquier tipo de lecturas, pero en realidad está diseñado para el ensamblado de lecturas cortas que van desde 25 – 50 pb. Es uno de los más utilizados en el ensamblado de genomas bacterianos secuenciados previamente con la plataforma Illumina. Además, la principal ventaja de este ensamblador es que puede eliminar errores producidos por el experimento de secuenciación y resuelve repeticiones causadas por la complejidad del genoma (Nagarajan y Pop, 2013). 
El ensamblador Velvet está formado por dos programas independientes pero complementarios:
• Velveth: se encarga de construir la estructura de datos que se va a utilizar para ensamblar todo elconjunto del genoma.
• Velvetg: este programa es el núcleo del ensamblador y se encarga de construir el grafo de Bruijnpara conseguir ensamblar las lecturas que introducimos como parámetro en la línea de comandos. Además, este programa es el encargado de eliminar los errores y detectar las secuencias repetidas.

También hay enfoques de ensamblaje "híbridos", por ejemplo, Atlas Ray y MaSuRCA (Zimin et al., 2013), que combinan características de diferentes algoritmos y utilizan datos de múltiples tecnologías de secuenciación. 

En general, es aconsejable probar varios métodos de ensamblaje diferentes y evaluar cuál es el más apropiado para los datos específicos disponibles. 

Al elegir el software de ensamblaje, es importante considerar tanto la cantidad de datos de secuenciación como los recursos computacionales disponibles (Schatz et al., 2010). Los métodos gráficos de De Bruijn, generalmente requieren grandes cantidades de memoria de cálculo (RAM).

**Literatura citada:**

Kisand V., 2013. Genome sequencing of bacteria: sequencing, de novo assembly and rapid analysis using open source tools. BMC Genomics. 1;14:211.

Baker M. 2012. De novo genome assembly: what every biologist should know. Nature Methods 9(4):333-37

Nagarajan N. y Pop M., 2013. Sequence assembly demystified. Nat Rev Genet. 14(3):157-67.

Schatz M.C., Witkowski J., McCombie W.R., et al. 2010. Current challenges in de novo plant genome sequencing and assembly. Genome Biol. 13(4):243.

Zimin A.V., Marçais G., Puiu D., Roberts M., Salzberg S.L., Yorke J.A. 2013. The masurca genome assembler. Bioinformatics.29(21):2669–77. 