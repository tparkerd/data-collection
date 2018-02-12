
SELECT 1 AS id, COUNT(*) AS 'MTL < 1', b.countOf
FROM posts p
INNER JOIN (
  SELECT 1 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 1 AND 50
    AND
    p.score BETWEEN 1 AND 10
) AS b ON b.tmpid = 1
WHERE
  CHAR_LENGTH(p.content_text) < 1
  AND
  p.score < 1
UNION
SELECT 2 AS id, COUNT(*) AS 'MTL < 1', b.countOf
FROM posts p
INNER JOIN (
  SELECT 2 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 1 AND 50
    AND
    p.score BETWEEN 11 AND 20
) AS b ON b.tmpid = 2
WHERE
  CHAR_LENGTH(p.content_text) < 1
  AND
  p.score BETWEEN 1 AND 10
UNION
SELECT 3 AS id, COUNT(*) AS 'MTL < 1', b.countOf
FROM posts p
INNER JOIN (
  SELECT 3 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 1 AND 50
    AND
    p.score BETWEEN 21 AND 30
) AS b ON b.tmpid = 3
WHERE
  CHAR_LENGTH(p.content_text) < 1
  AND
  p.score BETWEEN 11 AND 20