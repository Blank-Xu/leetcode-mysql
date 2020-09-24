# https://leetcode.com/problems/employees-earning-more-than-their-managers/

# +----+-------+--------+-----------+
# | Id | Name  | Salary | ManagerId |
# +----+-------+--------+-----------+
# | 1  | Joe   | 70000  | 3         |
# | 2  | Henry | 80000  | 4         |
# | 3  | Sam   | 60000  | NULL      |
# | 4  | Max   | 90000  | NULL      |
# +----+-------+--------+-----------+

# +----------+
# | Employee |
# +----------+
# | Joe      |
# +----------+


# --------------------------------------
# -----------table and data-------------
# --------------------------------------
DROP TABLE IF EXISTS `Employee`;

CREATE TABLE `Employee`
(
    `Id`        int PRIMARY KEY AUTO_INCREMENT,
    `Name`      varchar(100),
    `Salary`    float,
    `ManagerId` int
);

INSERT INTO `Employee` (`Name`, `Salary`, `ManagerId`)
VALUES ('Joe', 70000, 3),
       ('Henry', 80000, 4),
       ('Sam', 60000, NULL),
       ('Max', 90000, NULL);


# --------------------------------------
# ---------------scripts----------------
# --------------------------------------
SELECT E1.`Name` `Employee`
FROM `Employee` E1
         LEFT JOIN `Employee` E2 ON E1.`ManagerId` = E2.`Id`
WHERE E1.`Salary` > E2.`Salary`;