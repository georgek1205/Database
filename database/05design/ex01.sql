SELECT * FROM `user`;

-- 독서가 취미인 사용자 조회
SELECT * FROM `user` WHERE `hobby` LIKE '%독서%';

INSERT INTO `user`
(`name`, `yyyymmdd`, `hobby`, `introduce`, `email`)
VALUES
('김승규', '19920912', '책읽기', '안녕하세요 제 소개 입니다', 'lecture@hagulu.com'),
('김승규', '19920912', '독서', '안녕하세요 제 소개 입니다', 'lecture@hagulu.com'),
('김승규', '19920912', '노래', '안녕하세요 제 소개 입니다', 'lecture@hagulu.com'),
('유재석', '19600712', '진행하기', '안녕하세요 국민 MC 유재석입니다', 'yu@naever.com'),
('유재석', '19600712', '수다떨기', '안녕하세요 국민 MC 유재석입니다', 'yu@naever.com'),
('유재석', '19600712', '독서', '안녕하세요 국민 MC 유재석입니다', 'yu@naever.com');

SELECT * FROM `user` WHERE `hobby` = '독서';

-- 사용자 정보 저장 테이블
-- 이름, 생년월일, 이메일, 자기소개
CREATE TABLE `new_user` (
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(16) NOT NULL,
    `yyyymmdd` CHAR(8) NOT NULL,
    `email` VARCHAR(32) NOT NULL,
    `introduce` TEXT,
    `createdAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
DESC `new_user`;


-- 사용자 취미 저장 테이블
-- 사용자 id, 취미
CREATE TABLE `hobby`(
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `userId` INT NOT NULL,
    `hobby` VARCHAR(18) NOT NULL,
    `createdAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 사용자 데이터 추가
INSERT INTO `new_user`
(`name`, `yyyymmdd`, `email`, `introduce`)
VALUES
('김승규', '19920912', 'lecture@hagulu.com', '안녕하세요 제 소개 입니다'),
('유재석', '19600712', 'yu@naever.com', '안녕하세요 국민 MC 유재석입니다');

SELECT * FROM `new_user`;

INSERT INTO `hobby`
(`userId`, `hobby`)
VALUES
(1, '독서'),
(1, '노래'),
(1, '영화'),
(2, '진행하기'),
(2, '수다떨기'),
(2, '독서');

SELECT * FROM `hobby`;

-- 취미가 독서인 사용자 이름, 생년월일, 이메일 조회
SELECT * FROM `hobby` WHERE `hobby` = '독서';

SELECT `name`, `yyyymmdd`, `email` FROM `new_user` WHERE `id` = 1;
SELECT `name`, `yyyymmdd`, `email` FROM `new_user` WHERE `id` = 2;
