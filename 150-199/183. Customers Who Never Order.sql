# https://leetcode-cn.com/problems/customers-who-never-order/

# Table: Customers.
#
# +----+-------+
# | Id | Name  |
# +----+-------+
# | 1  | Joe   |
# | 2  | Henry |
# | 3  | Sam   |
# | 4  | Max   |
# +----+-------+
# Table: Orders.
#
# +----+------------+
# | Id | CustomerId |
# +----+------------+
# | 1  | 3          |
# | 2  | 1          |
# +----+------------+
# Using the above tables as example, return the following:
#
# +-----------+
# | Customers |
# +-----------+
# | Henry     |
# | Max       |
# +-----------+


# --------------------------------------
# -----------table and data-------------
# --------------------------------------
DROP TABLE IF EXISTS `Customers`;
DROP TABLE IF EXISTS `Orders`;

CREATE TABLE `Customers`
(
  `Id`   int AUTO_INCREMENT PRIMARY KEY,
  `Name` varchar(64)
);

INSERT INTO `Customers`(`Name`)
VALUES ('Joe'),
       ('Henry'),
       ('Sam'),
       ('Max');

CREATE TABLE `Orders`
(
  `Id`         int AUTO_INCREMENT PRIMARY KEY,
  `CustomerId` int
);

INSERT INTO `Orders`(`CustomerId`)
VALUES (3),
       (1);


# --------------------------------------
# ---------------scripts----------------
# --------------------------------------
SELECT C.`Name` Customers
FROM `Customers` C
         LEFT JOIN `Orders` O ON C.`Id` = O.`CustomerId`
WHERE O.`Id` IS NULL;
