-- Newest
SELECT 'character count'
UNION ALL
SELECT char_length(p.content_text)
FROM posts p
INTO OUTFILE '/var/lib/mysql-files/textlengths.csv'
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
ESCAPED BY '"'
LINES TERMINATED BY '\n';

-- Basic Arch Linux
SELECT 'id', 'txt', 'rating'
UNION ALL
SELECT p._id AS id,
       CASE p.submission_type
          WHEN 'Submission' THEN CONCAT(REPLACE(p.title, '\n', ' '), ' ', REPLACE(p.selftext, '\n', ' '))
          ELSE REPLACE(p.body, '\n', ' ') END AS txt,
       CASE p.submission_type
          WHEN 'Submission' THEN 1
          ELSE 0 END AS rating
       FROM reddit.posts p
       WHERE p.ups > 50
          AND p.edited IS NULL
          AND p.content_text IS NOT NULL
          AND CHAR_LENGTH(p.content_text) > 100
INTO OUTFILE '/var/lib/mysql-files/happy.csv'
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
ESCAPED BY '"'
LINES TERMINATED BY '\n';


-- Possibly laptop
SELECT 'id', 'txt', 'rating'
UNION ALL
SELECT p._id AS id,
       CASE p.submission_type
          WHEN 'Submission' THEN CONCAT(REPLACE(p.title, '\n', ' '), ' ', REPLACE(p.selftext, '\n', ' '))
          ELSE REPLACE(p.body, '\n', ' ') END AS txt,
       0
       FROM wholesome.posts p
       WHERE p.ups > 50
          AND p.content_text IS NOT NULL
          AND CHAR_LENGTH(p.content_text) > 100
INTO OUTFILE '/var/lib/mysql/getmotivated.csv'
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
ESCAPED BY '"'
LINES TERMINATED BY '\n';
