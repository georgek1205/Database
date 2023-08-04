SELECT * FROM `score`;

SELECT * FROM `score` LIMIT 10;



SELECT * FROM `score` 
WHERE `year` = '2020' AND `semester` = 1 AND `term` = '기말고사' AND `subject` = '국어' 
ORDER BY `score` DESC;

SELECT * FROM `review`;

SELECT concat(`year`, '년', `semester`, '학기', `term`, " ", `name`, " - ", `subject`, `score`, '점') FROM `score`;

SELECT count(*) FROM `review` WHERE `userName` = '맛있으면짖는개' AND `review` LIKE '왈왈%';

SELECT * FROM `review` ORDER BY `createdAt` LIMIT 10;

SELECT * FROM `review` WHERE `storeName` = '교촌치킨' ORDER BY `point` DESC;

SELECT `userName`, `storeName` FROM `review` ORDER BY `point` LIMIT 1;