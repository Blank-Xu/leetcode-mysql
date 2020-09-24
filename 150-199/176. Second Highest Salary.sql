# https://leetcode.com/problems/second-highest-salary/

# +----+--------+
# | Id | Salary |
# +----+--------+
# | 1  | 100    |
# | 2  | 200    |
# | 3  | 300    |
# +----+--------+

# +---------------------+
# | SecondHighestSalary |
# +---------------------+
# | 200                 |
# +---------------------+


# --------------------------------------
# -----------table and data-------------
# --------------------------------------
DROP TABLE IF EXISTS `Employee`;

CREATE TABLE `Employee`
(
    `Id`     int PRIMARY KEY AUTO_INCREMENT,
    `Salary` float
);

INSERT INTO `Employee` (`Salary`)
VALUES (100),
       (200),
       (300);


# --------------------------------------
# ---------------scripts----------------
# --------------------------------------
SELECT IFNULL(MAX(`Salary`), NULL) `SecondHighestSalary`
FROM `Employee`
WHERE `Salary` < (SELECT MAX(`Salary`) FROM `Employee`);