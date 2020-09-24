# https://leetcode.com/problems/duplicate-emails/

# --------------data-------------------
# +----+---------+
# | Id | Email   |
# +----+---------+
# | 1  | a@b.com |
# | 2  | c@d.com |
# | 3  | a@b.com |
# +----+---------+

# ------------result-------------------
# +---------+
# | Email   |
# +---------+
# | a@b.com |
# +---------+


# --------------------------------------
# -----------table and data-------------
# --------------------------------------
DROP TABLE IF EXISTS `Person`;

CREATE TABLE `Person`
(
    `Id`    int PRIMARY KEY AUTO_INCREMENT,
    `Email` varchar(100) DEFAULT '' NOT NULL
);

INSERT INTO `Person` (`Email`)
VALUES ('a@b.com'),
       ('c@d.com'),
       ('a@b.com');


# --------------------------------------
# ---------------scripts----------------
# --------------------------------------
SELECT T.`Email`
FROM (SELECT `Email`, COUNT(*) COUNT FROM `Person` GROUP BY `Email`) T
WHERE T.COUNT > 1;

# SELECT DISTINCT(P1.`Email`) FROM `Person` P1 INNER JOIN `Person` P2 ON P1.`Email` = P2.`Email` AND P1.`Id` != P2.`Id`