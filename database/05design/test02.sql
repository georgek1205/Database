CREATE TABLE `reviewTable`(
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `store` VARCHAR(16) NOT NULL,
    `phoneNumber` VARCHAR(16) NOT NULL,
    `address` VARCHAR(16) NOT NULL,
    `businessNumber` VARCHAR(16) NOT NULL,
    `introduce` VARCHAR(30) NOT NULL,
    `createdAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    
)ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

CREATE TABLE `menureview`(

	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `userId` INT NOT NULL,
    `menu` VARCHAR(16) NOT NULL,
    `userName` VARCHAR(16) NOT NULL,
    `point` DECIMAL(2,1) NOT NULL,
    `review` VARCHAR(16),
    `createdAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    
)ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

DESC `reviewTable`;
DESC `menureview`;
DROP TABLE `reviewTable`;
DROP TABLE `menureview`;


INSERT INTO `reviewTable`
(`store`, `phoneNumber`, `address`, `businessNumber`, `introduce`)
VALUES
('교촌치킨', '02-000-0000', '서울시 서초구', '111-111-1111', '항상 맛있는 닭을 선사 합니다.'),
('BHC', '02-111-0000', '서울시 서초구', '111-222-1111', '전지현씨 BHC'),
('버거킹', '02-222-1111', '서울시 서초구', '333-222-12222', '맥도날드 가지말고 여기로와요');

SELECT * FROM `reviewTable`;

INSERT INTO `menureview`
(`userId`, `menu`, `userName`, `point`, `review`)
VALUES
(1, '오리지날 콤보	', '이병헌', '4.5', '콤보는 항상 진리입니다.'),
(2, '핫후라이드', '전지현', '5', NULL),
(2, '뿌링클', '이정재', '3.5', '내가 뿌링끌 상인가?'),
(3, '와퍼세트', '이병헌', '4.0', '패티 너무 좋아요'),
(1, '오리지날 콤보	', '맛있으면짖는개', '4.5', '왈왈왈!! 왈왈!'),
(2, '뿌링클', '전지현', '5', NULL);

SELECT `menu`, `userName`, `point`, `review` FROM `menureview` WHERE `userId` = 1;

