DROP TABLE `realestate`;
DROP TABLE `realtor`;


CREATE TABLE `realtor` (
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `office` VARCHAR(16) NOT NULL,
    `phoneNumber` VARCHAR(16) NOT NULL,
    `address` VARCHAR(64) NOT NULL,
    `grade` VARCHAR(8) NOT NULL,
    `createdAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `real_estate` (
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `realtorId` INT NOT NULL,
    `address` VARCHAR(64) NOT NULL,
    `area` INT NOT NULL,
    `type` CHAR(2) NOT NULL,
    `price` INT NOT NULL,
    `rentPrice` INT,
    `createdAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




INSERT INTO `realtor` 
(`office`, `phoneNumber`, `address`, `grade`)
VALUES 
('황금부동산', '02-300-2000', '서울시 서초구', '안심중개사'),
('대박공인중개사', '02-000-7777', '서울시 동작구', '일반중개사'), 
('굿모닝부동산', '02-999-1111', '서울시 강남구', '안심중개사'), 
('희망공인중개사', '02-222-0909', '서울시 송파구', '일반중개사'),
('럭키공인중개사', '02-777-7777', '서울시 동작구', '일반중개사'),
('믿음부동산', '02-333-9999', '서울시 서초구', '프리미엄중개사');

SELECT * FROM `realtor`;
SELECT * FROM `real_estate`;


INSERT INTO `real_estate` 
(`realtorId`, `address`,  `area`, `type`, `price`, `rentPrice`)
VALUES (1, '레이얀 레이크 아파트 301동 905호', 84, '전세', 40000, NULL),
(5, '레알편한세상 시티 505동 101호', 110, '매매', 120000, NULL), 
(1, '롱데캐슬 101동 402호', 87, '월세', 20000, 200), 
(5, '슼뷰 오피스텔 1210호', 55, '월세', 10000, 100), 
(2, '푸르지용 파크 701동 2104호', 97, '매매', 90000, NULL),
(1, '굿타워 오피스텔 804호', 65, '전세', 20000, NULL), 
(4, '미래 홈타운 103동 104호', 88, '전세', 65000, NULL),
(2, '강남 헤리티지 시티 902동 606호', 90, '매매', 130000, NULL), 
(4, '푸르지용 리버 203동 804호', 123, '매매', 170000, NULL),
(1, '롱데캐슬 503동 802호', 107, '월세', 90000, 150), 
(2, '레알편한세상 시티 105동 806호', 110, '매매', 150000, NULL),
(6, '루체스타 오피스텔 1105호', 53, '월세', 10000, 50), 
(2, '와이파크 시티 205동 1603호', 113, '매매', 120000, NULL), 
(4, '썅떼빌리버 오피스텔 2214호', 45, '월세', 20000, 80), 
(6, '쉐리빌 아파트 603동 1904호', 75, '전세', 50000, NULL),
(1, '그랑시아 103동 306호', 145, '전세', 230000, NULL),
(4, '그랑샤 굿윌 베스트 뷰 파크 502동 1402호', 88, '월세', 40000, 150), 
(5, '풍님 하버 파크빌 402동 702호', 87, '월세', 70000, 100), 
(6, '샤이 리버뷰 파크 803동 1704호', 145, '매매', 230000, NULL),
(1, '휴먼시아 드림빌 208동 604호', 111, '전세', 60000, NULL);


SELECT A.office, A.phoneNumber, B.address, B.area, B.price
FROM `realtor` AS `A`
JOIN `real_estate` AS `B`
ON A.id = B.realtorId
WHERE B.price <= 130000 AND B.type = '매매'
ORDER BY B.area DESC; 

SELECT A.office, A.phoneNumber, B.address, B.price, B.rentPrice, B.area
FROM `realtor` AS `A`
JOIN `real_estate` AS `B`
ON A.id = B.realtorId
WHERE A.grade = '안심중개사' AND B.type = '월세'
ORDER BY B.rentPrice;

SELECT A.office, A.phoneNumber, B.address, B.price, B.area
FROM `realtor` AS `A`
JOIN `real_estate` AS `B`
ON A.id = B.realtorId
WHERE A.address = '서울시 서초구' AND B.type = '전세' AND B.price <= 70000
ORDER BY B.price;
 
SELECT A.office, count(*)
FROM `realtor` As `A`
JOIN `real_estate` AS `B`
ON A.id = B.realtorId
GROUP BY A.office
ORDER BY count(*) DESC;

SELECT A.office, A.phoneNumber, B.address, B.price, B.area
FROM `realtor` AS `A`
JOIN `real_estate` AS `B`
ON A.id = B.realtorId
WHERE B.area >= 100 AND  A.office = '대박공인중개사' AND B.type IN('매매', '전세') -- (B.type = '매매' OR B.type = '전세')
ORDER BY B.price;