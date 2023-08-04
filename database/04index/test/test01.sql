EXPLAIN SELECT `review` FROM `review` WHERE `userName` = '이정재';
EXPLAIN SELECT `review` FROM `review` WHERE `userName` = '이병헌' AND `point` <= 3;
EXPLAIN SELECT `review` FROM `review` WHERE `userName` = '이병헌' AND `review` IS NOT NULL;
EXPLAIN SELECT `storeName`, avg(`point`) FROM `review` GROUP BY `storeName`;

ALTER TABLE `review` ADD INDEX `idx_userName`(`userName`);
ALTER TABLE `review` ADD INDEX `idx_point`(`point`);
ALTER TABLE `review` ADD INDEX `idx_review`(`review`);
ALTER TABLE `review` ADD INDEX `idx_storeName`(`storeName`);
