CREATE TABLE `job`(
	
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(16) NOT NULL,
    `phoneNumber` VARCHAR(16) NOT NULL,
    `email` VARCHAR(16) NOT NULL,
    `dreamJob` VARCHAR(16) NOT NULL,
    `createdAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP

)ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

CREATE TABLE `subjectscore`(
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `userId` INT NOT NULL,
    `year` INT NOT NULL,
    `semester` TINYINT NOT NULL,
    `term` VARCHAR(16) NOT NULL,
    `subject` VARCHAR(16) NOT NULL,
    `score` INT NOT NULL,
    `createdAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    
)ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

SELECT * FROM `job`;
SELECT * FROM `subjectscore`;
DROP TABLE `job`;
DROP TABLE `subjectscore`;

INSERT INTO `job`
(`name`, `phoneNumber`, `email`, `dreamJob`)
VALUES
('유재석', '01000001111', 'mc_u@naver.com', '프로그래머'),
('조세호', '01011110000', 'mrjo@naver.com', '모델');

INSERT INTO `subjectscore`
(`userId`,`year`, `semester`, `term`, `subject`, `score`)
VALUES
(1, 2020, 1, '중간고사', '국어', 80),
(1, 2020, 1, '중간고사', '영어', 95),
(1, 2020, 1, '중간고사', '수학', 90),
(2, 2020, 1, '중간고사', '국어', 85),
(2, 2020, 1, '중간고사', '영어', 90),
(2, 2020, 1, '중간고사', '수학', 70);


SELECT * FROM `job` WHERE `name` = '조세호';
SELECT `year`, `semester`, `term`, `subject`, `score` FROM `subjectscore` WHERE `userId` = 2;

