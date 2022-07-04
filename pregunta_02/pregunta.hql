/* 
Pregunta
===========================================================================

Para resolver esta pregunta use el archivo `data.tsv`.

Construya una consulta que ordene la tabla por letra y valor (3ra columna).

Apache Hive se ejecutará en modo local (sin HDFS).

Escriba el resultado a la carpeta `output` de directorio de trabajo.

        >>> Escriba su respuesta a partir de este punto <<<
*/

DROP TABLE IF EXISTS tabla_2;
CREATE TABLE  tabla_2 (
    letra STRING,
    fecha DATE,
    valor INT)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t';
LOAD DATA LOCAL INPATH 'data.tsv' INTO TABLE tabla_2;
INSERT OVERWRITE DIRECTORY 'output'
SELECT * FROM tabla_2 ORDER BY 1,3;
