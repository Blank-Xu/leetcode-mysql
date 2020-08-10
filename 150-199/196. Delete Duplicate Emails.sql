# https://leetcode-cn.com/problems/delete-duplicate-emails/

# Tables: Person
# +----+------------------+
# | Id | Email            |
# +----+------------------+
# | 1  | john@example.com |
# | 2  | bob@example.com  |
# | 3  | john@example.com |
# +----+------------------+
# Id is the primary key column for this table.
# For example, after running your query, the above Person table should have the following rows:
#
# +----+------------------+
# | Id | Email            |
# +----+------------------+
# | 1  | john@example.com |
# | 2  | bob@example.com  |
# +----+------------------+


# --------------------------------------
# -----------table and data-------------
# --------------------------------------
DROP TABLE IF EXISTS `Person`;

CREATE TABLE `Person`
(
  `Id`    int AUTO_INCREMENT PRIMARY KEY,
  `Email` varchar(64)
);

INSERT INTO `Person` (`Email`)
VALUES ('john@example.com'),
       ('bob@example.com'),
       ('john@example.com');


# --------------------------------------
# ---------------scripts----------------
# --------------------------------------
DELETE P1
FROM `Person` P1,
     `Person` P2
WHERE P1.Email = P2.Email
  AND P1.`Id` > P2.`Id`;
