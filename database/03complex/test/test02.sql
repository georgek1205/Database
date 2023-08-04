SELECT `userName`, count(*) FROM `review` GROUP BY `userName`;

SELECT `storeName`, avg(`point`) AS `average` FROM `review` GROUP BY `storeName`;

SELECT `userName` FROM `review` GROUP BY `userName` HAVING count(*) >= 4;


SELECT * FROM `score`;

SELECT `name`, avg(`score`) AS `average` FROM `score` WHERE `year` = '2020' AND `semester` = 1 AND `term` = '기말고사' GROUP BY `name`;

SELECT `subject`, avg(`score`) AS `average` FROM `score` WHERE `year` = '2020' GROUP BY `subject`;

SELECT `name`, avg(`score`) AS `average` FROM `score` WHERE `year` = '2020' GROUP BY `name` ORDER BY `average` DESC;