-- 학생 정보 테이블
-- 이름, 전공, 학번

CREATE TABLE `student`(
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(16) NOT NULL,
    `major` VARCHAR(16) NOT NULL,
    `number` VARCHAR(32) NOT NULL,
    INDEX `idx_name` (`name`),
    UNIQUE INDEX `idx_number` (`number`),
    INDEX `idx_name_major` (`name`, `major`)

);

DESC `student`;

DROP TABLE `student`;


CREATE TABLE `student`(
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(16) NOT NULL,
    `major` VARCHAR(16) NOT NULL,
    `number` VARCHAR(32) NOT NULL

);

-- 추후에 인덱스
ALTER TABLE `student` ADD INDEX `idx_name` (`name`);
-- 유니크 인덱스
ALTER TABLE `student` ADD UNIQUE INDEX `idx_number` (`number`);
-- 복합 컬럼 인덱스
ALTER TABLE `student` ADD INDEX `idx_num_major` (`name`, `major`);











