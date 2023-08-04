SELECT * FROM `seller`;

SELECT * FROM `used_goods`;

-- 하구루 사용자의 팜내 물품 리스트 조회

SELECT * FROM `used_goods` WHERE `sellerId` = 5;

SELECT * FROM `seller`
JOIN `used_goods`
ON seller.id = used_goods.sellerId;

-- inner join
-- 하구루 사용자가 올린 매물 정보 조회(통합정보)
-- 판매자 닉네임, 판매자 매너온도, 매물제목, 매물가격
SELECT seller.nickname, seller.temperature, used_goods.title, used_goods.price
FROM `seller`
JOIN `used_goods`
ON seller.id = used_goods.sellerId
WHERE seller.nickname = '하구루';

SELECT *
FROM `seller` AS `A`
JOIN `used_goods` AS `B`
ON A.id = B.sellerId;

-- outter join
-- left join
SELECT *
FROM `seller`
LEFT JOIN `used_goods`
ON seller.id = used_goods.sellerId;

-- right join
SELECT *
FROM `seller`
RIGHT JOIN `used_goods`
ON seller.id = used_goods.sellerId;


