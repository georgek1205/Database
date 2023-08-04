/*테이블 생성

	name, bday, hobby, selfintro
*/

CREATE TABLE `person` (

	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(16) NOT NULL,
    `birth` INT NOT NULL,
    `hobby` VARCHAR(64) NOT NULL,
    `introduce` TEXT,
    `createdAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
-- 위 표 생성 코드를 한번더 실행하면 이미 존재하기때문에 에러가뜬다. 
-- 테이블 설명 확인
DESC `person`;
DESC `user`;
SELECT * FROM `person`;

-- 테이블 삭제
DROP TABLE `person`;

-- 테이블 수정
-- 테이블 이름 수정
ALTER TABLE `person` RENAME `user`;
ALTER TABLE `user` RENAME `person`;
-- 컬럼 추가
ALTER TABLE `user` ADD COLUMN `email` VARCHAR(16) NOT NULL;
-- 추가한 컬럼 수정하기
ALTER TABLE `user` MODIFY COLUMN `email` VARCHAR(32) NOT NULL;

-- 컬럼 이름 수정
ALTER TABLE `user` CHANGE COLUMN `birth` `yyyymmdd` CHAR(8) NOT NULL;
