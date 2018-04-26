--Obtener los 5 premios novel mas recientes
SELECT * FROM (SELECT * FROM KATIA.PRIZE_WIN_TABLE ORDER BY YEAR_D DESC )WHERE ROWNUM <= 5;

--Obtener los últimos 10 premios nobel de física
SELECT* FROM (SELECT * FROM KATIA.PRIZE_WINNER_TABLE PW
INNER JOIN KATIA.PRIZE_TABLE PE
ON PW.PRIZE_ID=PE.PRIZE_ID
INNER JOIN KATIA.CATEGORY_TABLE CAT
ON PE.CATEGORY_ID=CAT.CATEGORY_ID
WHERE CAT.CATEGORY_DES='Physic' ORDER BY PE.YEAR_D) WHERE ROWNUM <=10;


--Obtener las personas que han ganado más de un premio
SELECT COUNT(AR.WINNER_ID) FROM KATIA.PRIZE_WINNER_TABLE AR
INNER JOIN KATIA.WINNER_TABLE WIN
ON AR.WINNER_ID=WIN.WINNER_ID;

--Obtener el campo o lenguaje con mas premios nobel
SELECT MAX(COUNT(PW.PRIZE_ID)) FROM KATIA.PRIZE_WINNER_TABLE PW
INNER JOIN KATIA.PRIZE_TABLE PE
ON PW.PRIZE_ID=PE.PRIZE_ID) ORDER BY PW.PRIZE_ID;

--Obtener los premios ganados desde el año 1980 al 1990 en química
SELECT * FROM KATIA.PRIZE_WINNER_TABLE PW
INNER JOIN KATIA.PRIZE_TABLE PE
ON PW.PRIZE_ID=PE.PRIZE_ID 
INNER JOIN KATIA.CATEGORY_TABLE CAT
ON PE.CATEGORY_ID=CAT.CATEGORY_ID
WHERE (PE.YEAR_D.YEAR BETWEEN 1980 AND 1990) AND (CAT.CATEGORY_DES='Chemestry');

--Obtener el premio nobel ganado menos ocasiones
SELECT MIN(Countd) FROM(SELECT COUNT(PRIZE_ID) Countd FROM KATIA.PRIZE_WINNER_TABLE);

--Obtener los premio nobel compartido


--Obtener el país con más premio nobel
SELECT MAX(de) Pais FROM(SELECT COUNT(BIRTHPLACE_ID) de FROM KATIA.PRIZE_WINNER_TABLE PW
INNER JOIN KATIA.WINNER_TABLE WIN 
ON PW.WINNER_ID = WIN.WINNER_ID
ORDER BY BIRTHPLACE_ID) ;

--Obtener el promedio de edad de todos los ganadores al momento en que ganan su premio

