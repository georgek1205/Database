-- 중고 물품 거래 서비스

-- 중고 게시물 제목, 중고물품 가격, 물품 설명, 물품 사진, 판매자 닉네임, 판매자의 매너온도, 판매자 프로필


-- 중복 정부는 판매자 정보이다, 매번 입력이 될 필요가없으니까.
-- 판매자 정보 - 닉네임, 매너온도, 프로필 사진


-- 중고 물품 정보 - 게시물 제목, 가격, 설명, 사진
DROP TABLE `seller`;

CREATE TABLE `seller`(
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `nickname` VARCHAR(16) NOT NULL,
	`temperature` DECIMAL(3,1) DEFAULT 36.5 NOT NULL,
    `profileImage` VARCHAR(128),
    `createdAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP

)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `used_goods`(
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `sellerId` INT NOT NULL,
    `title` VARCHAR(64) NOT NULL,
    `price` INT NOT NULL,
    `description` TEXT NOT NULL,
    `image` VARCHAR(128),
    `createdAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP

)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DESC `seller`;
DESC `used_goods`;

INSERT INTO `seller`
(`nickname`, `profileImage`, `temperature`)
VALUES 
('마로비', 'https://cdn.pixabay.com/photo/2017/08/01/01/33/beanie-2562646_1280.jpg', 36.6),
('아메리카노', NULL, 48.2),
('동네주민', 'https://cdn.pixabay.com/photo/2015/11/26/00/14/woman-1063100_1280.jpg', 29.0),
('네고왕', NULL, 36.5),
('하구루', 'https://cdn.pixabay.com/photo/2017/09/25/13/12/puppy-2785074_1280.jpg', 36.5);


INSERT INTO `used_goods`
(`sellerId`, `title`, `price`, `description`, `image`)
VALUES 
(5, '플스5 팝니다', 300000, '쿨거래 하실분들 연락 주세요', 'https://cdn.pixabay.com/photo/2022/01/07/10/38/playstation-6921618_1280.jpg'),
(5, '원피스 팝니다', 20000, '살이 빠져서 사이즈가 커서 못입어요.', 'https://cdn.pixabay.com/photo/2020/06/10/01/55/transboundary-5280644_1280.jpg'),
(3, '후라다 여성지갑 팝니다', 400000, '오늘 선물하려고 샀는데, 헤어졌어요', 'https://cdn.pixabay.com/photo/2017/03/07/23/34/wallet-2125548_1280.jpg'),
(2, '바퀴벌레 좀 잡아주세요', 5000, '제발 잡아 주세요 막 날아 다녀요', NULL);



