CREATE TABLE `realtor`(
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `office` TEXT NOT NULL,
    `phoneNumber` VARCHAR(16) NOT NULL,
    `address` TEXT NOT NULL,
    `grade` VARCHAR(16) NOT NULL,
	`createdAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `realestate`(
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `realtorId` INT NOT NULL,
    `address` TEXT NOT NULL,
    `area` INT NOT NULL,
    `type` VARCHAR(16) NOT NULL,
    `price` INT NOT NULL,
    `rentPrice` INT,
	`createdAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE `realtor`;
DROP TABLE `realestate`;

DESC `realtor`;
DESC `realestate`;

SELECT * FROM `realtor`;
SELECT * FROM `realestate`;

INSERT INTO `realtor`
(`office`, `phoneNumber`, `address`, `grade`)
VALUES
('황금 부동산', '02-300-2000', '서울시 서초구', '안심중개사'),
('대박 공인중개사', '02-000-7777', '서울시 동작구', '일반중개사');

INSERT INTO `realestate`
(`realtorId`, `address`, `area`, `type`, `price`, `rentPrice`)
VALUES
(1, '레미얀 레이크 아파트 301동 905호', 84, '전세', 40000, NULL),
(2, '레알편한세상 시티 505동 101호', 110, '매매', 120000, NULL),
(1, '롱데캐슬 101동 402호', 87, '월세', 20000, 200),
(1, '슼뷰 오피스텔 1210호', 55, '월세', 10000, 100),
(2, '푸르지용 리버 203동 804호', 123, '매매', 170000, NULL);

SELECT `address` AS '매물 주소' , `price` AS '보증금' , `rentPrice` AS '월세' 
FROM `realestate` WHERE `realtorid` = 1 AND `type` = '월세';

CREATE TABLE `option`(
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `optionId` INT NOT NULL,
    `option` VARCHAR(16),
	`createdAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
		
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `option`
(`optionId`, `option`)
VALUES
(4, '세탁기'),
(4, '에어컨'),
(4, '식기세척기'),
(3, '신발장'),
(3, '냉장고');