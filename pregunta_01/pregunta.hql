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

LOAD DATA LOCAL INPATH 'data.tsv' OVERWRITE INTO TABLE tabla_de_datos;
ROW FORMAT DELIMITED FIELDS TERMINATED BY ','
INSERT OVERWRITE DIRECTORY './output'
SELECT 1 AS letter, COUNT(*) AS freq FROM tabla_de_datos GROUP BY 1 ORDER BY letter DESC;
