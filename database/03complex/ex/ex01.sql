SELECT * FROM `city`;



-- LIMIT 으로 첫 50개만 출
SELECT * FROM `city` LIMIT 50;

-- 0~50, 100~150
SELECT * FROM `city` LIMIT 0, 50;
SELECT * FROM `city` LIMIT 100, 50;

-- If city in table(city) starts or ends with C
SELECT * FROM `city` WHERE `city` LIKE 'C%';
SELECT * FROM `city` WHERE `city` LIKE '%C';

SELECT * FROM `city` WHERE `city` LIKE '%C%';

-- 대소문자 구분조회
-- 대문자 C가 포함된 도시 이름 조회
SELECT * FROM `city` WHERE `city` LIKE binary('%C%');


-- 정렬하기
SELECT * FROM `city` ORDER BY `country_id`;

-- 정렬하기(내림차순) default 가 오름차순
SELECT * FROM `city` ORDER BY `city` DESC;


-- C로 시작하는 도시를 country_id 로 오름차순 정렬해서 10개만 조회 (순서를 잘 생각하자)
SELECT * FROM `city` WHERE `city` LIKE 'C%' ORDER BY `country_id` LIMIT 10;

-- concat 
SELECT concat('Hello', ' world');
SELECT concat('도시이름 : ', `city`, ' 나라코드 : ', `country_id`) FROM `city`;