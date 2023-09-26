SELECT name, CHAR_LENGTH(name) AS len   /*LENGHT возвращало размер в байтах*/
FROM cities                          /*и было в два раза больше чем надо*/
WHERE CHAR_LENGTH(name) NOT BETWEEN 8 AND 10