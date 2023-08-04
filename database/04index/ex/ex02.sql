SELECT * FROM `customer`;

-- 검색 id가 3인 데이터 조
-- PK 를 통한 조회 : const (가장 좋은 성능)
EXPLAIN SELECT * FROM `customer` WHERE `customer_id` = 3;

-- PK 를 통한 범위 검색 : range
EXPLAIN SELECT * FROM `customer` WHERE `customer_id` < 10;


-- active가 1인 데이터 검색 (인덱스에 없는 값, 최악) : all
EXPLAIN SELECT * FROM `customer` WHERE `active` = 1;


-- store_id 가 2인 데이터 조회
EXPLAIN SELECT * FROM `customer` WHERE `store_id` = 2;

-- last_name A로 시작하는 이름, A로 끝나는 이름, A로 포함된 이름 조회
EXPLAIN SELECT * FROM `customer` WHERE `last_name` LIKE 'A%'; -- range
EXPLAIN SELECT * FROM `customer` WHERE `last_name` LIKE '%A'; -- ALL
EXPLAIN SELECT * FROM `customer` WHERE `last_name` LIKE '%A%'; -- ALL

SELECT * FROM `film`
-- 50분 비만의 영화 조회
EXPLAIN SELECT * FROM `film` WHERE `length` < 50;
-- type이 ALL 이니까 index를 추가하자
ALTER TABLE `film` ADD INDEX `idx_length` (`length`);


EXPLAIN SELECT * FROM `film` WHERE `length` < 50;
-- 50이였을때는 range였는데 150이였을떄 all이 되는이유는, 150을 돌리면 1000개데이터중에 750개정도가 조회가되는데 
EXPLAIN SELECT * FROM `film` WHERE `length` < 150;

-- index 제거
ALTER TABLE `film` DROP INDEX `idx_length`;