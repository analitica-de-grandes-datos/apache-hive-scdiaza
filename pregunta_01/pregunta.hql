/* 
Pregunta
===========================================================================

Para resolver esta pregunta use el archivo `data.tsv`.

Compute la cantidad de registros por cada letra de la columna 1.
Escriba el resultado ordenado por letra. 

Apache Hive se ejecutará en modo local (sin HDFS).

Escriba el resultado a la carpeta `output` de directorio de trabajo.

        >>> Escriba su respuesta a partir de este punto <<<
*/

DROP TABLE IF EXISTS tabla_de_datos;
CREATE TABLE tabla_de_datos (letter STRING, dates DATE, number INT)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t';

LOAD DATA LOCAL INPATH 'data.tsv' OVERWRITE INTO TABLE tabla_de_datos;

INSERT OVERWRITE DIRECTORY './output'
SELECT letter, COUNT(letter) AS freq FROM tabla_de_datos GROUP BY letter ORDER BY letter DESC;
