CREATE TABLE `company`(

	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(16) NOT NULL,
    `business` TEXT NOT NULL,
    `scale` VARCHAR(10) NOT NULL,
    `headcount` INT NOT NULL,
    `createdAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP

)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE `company`;
DROP TABLE `qualification`;

CREATE TABLE `qualification`
(
	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `companyid` INT NOT NULL,
    `position` TEXT NOT NULL,
    `responsibilities` TEXT NOT NULL,
    `qualification` TEXT NOT NULL,
    `type` VARCHAR(10) NOT NULL,
    `region` VARCHAR(32) NOT NULL,
    `salary` INT NOT NULL,
	`deadline` DATE NOT NULL,
    `createdAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `company`
(`name`, `business`, `scale`, `headcount`, `createdAt`, `updatedAt`)
VALUES
('Cacao', '인터넷 포털','대기업', '2848', now(), now()),
('Rine', '모바일 무선', '대기업', '1138', now(), now()),
('NG소프트', '컨텐츠 게임', '중견기업', '4430', now(), now()),
('쿠퐁', '쇼핑몰', '중견기업', '5350', now(), now()),
('Naber', '인터넷 포털', '대기업','4048', now(), now()),
('우와한형제들', '소프트웨어 솔루션', '중견기업', '926', now(), now());


INSERT INTO `qualification`
(`companyid`, `position`, `responsibilities`, `qualification`, `type`, `region`, `salary`, `deadline`, `createdAt`, `updatedAt`)
VALUES
(1, '안드로이드 개발자', '메신저 앱 개발', 'kotlin 경력 3년 이상', '정규직', '성남시 분당구', '7300', '2026-03-13', now(), now()),
(1, '안드로이드 개발자', '쇼핑 서비스 개발',	'kotlin 경력 3년 이상', '정규직', '성남시 분당구', '6300', '2026-04-04', now(), now()),
(1, '웹 back-end 개발자', '이모티콘 샵 API 서버 개발', 'spring 경력 3년 이상', '정규직', '성남시 분당구', '7000', '2026-03-28', now(), now()),
(2, '아이폰 앱 개발자', '메신져 앱 개발', 'RxSwift 개발 경력 3년 이상', '정규직', '성남시 분당구', '7600', '2026-04-01', now(), now()),
(2, '웹 back-end 개발자', 'Rine 포스팅 기능 API 개발', 'spring 개발 경력 3년 이상', '정규직', '성남시 분당구', '6600', '2026-03-29', now(), now()),
(3, '게임 개발자', '게임 개발', 'Unreal Engine 개발 5년 이상', '정규직', '성남시 분당구', '8400', '2026-04-20', now(), now()),
(3, '모바일 게임 개발자', '리뉘쥐 모바일 게임 개발', 'Unreal Engine 개발 가능자', '계약직', '성남시 분당구', '8500', '2026-04-05', now(), now()),
(4, '웹 back-end 개발자', '오픈마켓 웹 개발', 'spring 개발 가능자', '정규직', '서울시 송파구', '8100', '2026-05-02', now(), now()),
(4, '웹 front-end 개발자', '오픈마켓 웹 개발', 'react 개발 가능자', '계약직', '서울시 송파구', '9000', '2026-04-10', now(), now()),
(5, '웹 back-end 개발자', 'Naber 메일 기능 개발', 'spring 개발 경력 5년 이상', '계약직'	, '성남시 분당구', '9800', '2026-04-20', now(), now()),
(5, '동영상 플레이어 개발자', '네이버TV 플레이어 개발', '동영상 코덱 기술 개발가능자', '정규직', '성남시 분당구', '7800', '2026-05-01', now(), now()),
(5, '웹 front-end 개발자', 'Now 웹 개발', 'Vue.js 개발 가능자', '정규직', '성남시 분당구', '7000', '2026-04-15', now(), now()),
(6, '웹 back-end 개발자', '사내 인트라넷 개발', 'spring 개발경력 3년이상', '계약직', '서울시 송파구', '8800', '2026-04-15', now(), now()),
(6, '웹 back-end 개발자', '쇼핑 라이브 API 개발', 'spring 개발경력 3년이상', '정규직', '서울시 송파구', '8200', '2026-05-12', now(), now());

SELECT * FROM `company`;
SELECT * FROM `qualification`;

SELECT A.name, B.position, B.qualification, B.type, B.salary
FROM `company` AS `A`
JOIN `qualification` AS `B`
ON A.id = B.companyid
ORDER BY B.salary DESC;

SELECT A.name, A.scale, B.position, B.qualification, B.type, B.salary
FROM `company` AS `A`
JOIN `qualification` AS `B`
ON A.id = B.companyid
WHERE A.scale = '대기업' AND B.type = '정규직' AND B.salary >= 7000
ORDER BY B.salary DESC LIMIT 3;

SELECT A.name, count(*), A.business, A.headcount
FROM `company` AS `A`
JOIN `qualification` AS `B`
ON A.id = B.companyid
WHERE B.deadline < '2026-05-01' AND B.type = '정규직' GROUP BY A.id
ORDER BY count(*) DESC;

SELECT B.type, avg(B.salary) AS salary
FROM `company` AS `A`
JOIN `qualification` AS `B`
ON A.id = B.companyid
WHERE A.scale = '중견기업' GROUP BY B.type
ORDER BY salary;



SELECT A.name, avg(B.salary) AS salary, A.scale, A.headcount
FROM `company` AS `A`
JOIN `qualification` AS `B`
ON A.id = B.companyid
WHERE B.region = '성남시 분당구' GROUP BY A.id
HAVING salary >= 7000
ORDER BY A.headcount DESC;
-- 그룹은 되도록 A.id로 그룹하고. 성남시 분당구는 평균을 구하는 과정이고, 7000은 평균을 구하고 난 후 과정이기에 해빙으로 묶자
