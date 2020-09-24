# https://leetcode.com/problems/combine-two-tables/

# Table: Person
#
# +-------------+---------+
# | Column Name | Type    |
# +-------------+---------+
# | PersonId    | int     |
# | FirstName   | varchar |
# | LastName    | varchar |
# +-------------+---------+
# PersonId is the primary key column for this table.

# Table: Address
#
# +-------------+---------+
# | Column Name | Type    |
# +-------------+---------+
# | AddressId   | int     |
# | PersonId    | int     |
# | City        | varchar |
# | State       | varchar |
# +-------------+---------+


# --------------------------------------
# -----------table and data-------------
# --------------------------------------
DROP TABLE IF EXISTS `Person`;
DROP TABLE IF EXISTS `Address`;

CREATE TABLE `Person`
(
    `PersonId`  int PRIMARY KEY,
    `FirstName` varchar(100),
    `LastName`  varchar(100)
);

CREATE TABLE `Address`
(
    `AddressId` int PRIMARY KEY,
    `PersonId`  int,
    `City`      varchar(100),
    `State`     varchar(100)
);


# --------------------------------------
# ---------------scripts----------------
# --------------------------------------
SELECT P.`FirstName`, P.`LastName`, A.`City`, A.`State`
FROM `Address` A
         RIGHT JOIN `Person` P ON A.`PersonId` = P.`PersonId`;