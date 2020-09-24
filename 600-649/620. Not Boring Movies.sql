# https://leetcode.com/problems/not-boring-movies/

# table cinema:
#
# +---------+-----------+--------------+-----------+
# |   id    | movie     |  description |  rating   |
# +---------+-----------+--------------+-----------+
# |   1     | War       |   great 3D   |   8.9     |
# |   2     | Science   |   fiction    |   8.5     |
# |   3     | irish     |   boring     |   6.2     |
# |   4     | Ice song  |   Fantacy    |   8.6     |
# |   5     | House card|   Interesting|   9.1     |
# +---------+-----------+--------------+-----------+
# For the example above, the output should be:
# +---------+-----------+--------------+-----------+
# |   id    | movie     |  description |  rating   |
# +---------+-----------+--------------+-----------+
# |   5     | House card|   Interesting|   9.1     |
# |   1     | War       |   great 3D   |   8.9     |
# +---------+-----------+--------------+-----------+


# --------------------------------------
# -----------table and data-------------
# --------------------------------------
DROP TABLE IF EXISTS `cinema`;

CREATE TABLE `cinema`
(
    `id`          int AUTO_INCREMENT PRIMARY KEY,
    `movie`       varchar(64),
    `description` varchar(255),
    `rating`      float
);

INSERT INTO `cinema` (`movie`, `description`, `rating`)
VALUES ('War', 'great 3D', 8.9),
       ('Science', 'fiction', 8.5),
       ('irish', 'boring', 6.2),
       ('Ice song', 'Fantacy', 8.6),
       ('House card', 'Interesting', 9.1);



# --------------------------------------
# ---------------scripts----------------
# --------------------------------------
SELECT *
FROM `cinema`
WHERE `id` & 1
  AND `description` != 'boring'
ORDER BY `rating` DESC;
