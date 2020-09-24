# https://leetcode.com/problems/swap-salary/

# table salary:
# | id | name | sex | salary |
# |----|------|-----|--------|
# | 1  | A    | m   | 2500   |
# | 2  | B    | f   | 1500   |
# | 3  | C    | m   | 5500   |
# | 4  | D    | f   | 500    |
# After running your query, the above salary table should have the following rows:
# | id | name | sex | salary |
# |----|------|-----|--------|
# | 1  | A    | f   | 2500   |
# | 2  | B    | m   | 1500   |
# | 3  | C    | f   | 5500   |
# | 4  | D    | m   | 500    |


# --------------------------------------
# -----------table and data-------------
# --------------------------------------
DROP TABLE IF EXISTS `salary`;

CREATE TABLE `salary`
(
    `id`     int AUTO_INCREMENT PRIMARY KEY,
    `name`   varchar(2),
    `sex`    varchar(2),
    `salary` float
);

INSERT INTO `salary` (`name`, `sex`, `salary`)
VALUES ('A', 'm', 2500),
       ('B', 'f', 1500),
       ('C', 'm', 5500),
       ('D', 'f', 500);

# SELECT * FROM `salary`;


# --------------------------------------
# ---------------scripts----------------
# --------------------------------------
UPDATE `salary`
SET `sex` = IF(`sex` = 'm', 'f', 'm');