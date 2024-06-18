-- Table: Views
--
-- +---------------+---------+
-- | Column Name   | Type    |
-- +---------------+---------+
-- | article_id    | int     |
-- | author_id     | int     |
-- | viewer_id     | int     |
-- | view_date     | date    |
-- +---------------+---------+
-- There is no primary key (column with unique values) for this table, the table may have duplicate rows.
-- Each row of this table indicates that some viewer viewed an article (written by some author) on some date.
-- Note that equal author_id and viewer_id indicate the same person.

SELECT
    distinct v.author_id as id
FROM
    VIEWS v
WHERE
    v.author_id = v.viewer_id
ORDER BY
    id;
