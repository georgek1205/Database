-- 테이블 생성
CREATE TABLE `entrant` (
    `id` int NOT NULL AUTO_INCREMENT primary key,
    `name` varchar(10) NOT NULL,
    `license` varchar(20) NOT NULL,
    `score` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 데이터 삽입
insert into `entrant` (`name`, `license`, `score`)
values
('신보람', '정보처리기사', 87),
('김바다', '컴퓨터활용능력', 95),
('김태형', '정보처리기사', 99),
('박지민', '컴퓨터활용능력', 68),
('신보람', '컴퓨터활용능력', 78),
('김남준', '정보처리산업기사', 40),
('정호석', '컴퓨터활용능력', 99),
('민윤기', '컴퓨터활용능력', 100),
('김바다', '정보처리산업기사', 78),
('김바다', '정보처리기사', 82);

-- 자격증 종류를 조회
SELECT `license` FROM `entrant` GROUP BY `license`;

-- 자격증 응시자 이름 조회
SELECT `name` FROM `entrant` GROUP BY `name`;

-- 응시자별 응시 시험 개수 조회
SELECT `name`, count(1) FROM `entrant` GROUP BY `name`;

-- 자격증 별 점수 합계
SELECT `license`, sum(`score`) FROM `entrant` GROUP BY `license`; 

-- 자격증 별 평균
SELECT `license`, avg(`score`) FROM `entrant` GROUP BY `license`;

-- 그룹바이 결과에 조건 추가 하기
-- 자격증 시험을 2개 이상 본사람 조회
SELECT `name`, count(1) FROM `entrant` GROUP BY `name` HAVING count(1) >= 2;

-- 자격증 종류별 평균 점수가 80이 넘는 자격증 조회
-- 자격증 종류별 평균 점수 조회
SELECT `license`, avg(`score`) AS `average` FROM `entrant` GROUP BY `license` HAVING `average` >= 80;
