
SELECT 1 AS id, COUNT(*) AS 'MTL < 1', a.countOf, b.countOf, c.countOf, d.countOf, e.countOf, f.countOf, g.countOf, h.countOf, i.countOf
FROM posts p
INNER JOIN (
  SELECT 1 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 1 AND 50
    AND
    p.score BETWEEN 1 AND 10
  ) AS a ON a.tmpid = 1
INNER JOIN (
  SELECT 1 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 51 AND 100
    AND
    p.score BETWEEN 1 AND 10
  ) AS b ON b.tmpid = 1
INNER JOIN (
  SELECT 1 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 101 AND 150
    AND
    p.score BETWEEN 1 AND 10
  ) AS c ON c.tmpid = 1
INNER JOIN (
  SELECT 1 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 151 AND 200
    AND
    p.score BETWEEN 1 AND 10
  ) AS d ON d.tmpid = 1
INNER JOIN (
  SELECT 1 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 201 AND 250
    AND
    p.score BETWEEN 1 AND 10
  ) AS e ON e.tmpid = 1
INNER JOIN (
  SELECT 1 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 251 AND 300
    AND
    p.score BETWEEN 1 AND 10
  ) AS f ON f.tmpid = 1
INNER JOIN (
  SELECT 1 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 301 AND 350
    AND
    p.score BETWEEN 1 AND 10
  ) AS g ON g.tmpid = 1
INNER JOIN (
  SELECT 1 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 351 AND 400
    AND
    p.score BETWEEN 1 AND 10
  ) AS h ON h.tmpid = 1
INNER JOIN (
  SELECT 1 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 401 AND 450
    AND
    p.score BETWEEN 1 AND 10
  ) AS i ON i.tmpid = 1
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 1 AND 50
  AND
  p.score BETWEEN 1 AND 10
UNION
SELECT 2 AS id, COUNT(*) AS 'MTL < 1', a.countOf, b.countOf, c.countOf, d.countOf, e.countOf, f.countOf, g.countOf, h.countOf, i.countOf
FROM posts p
INNER JOIN (
  SELECT 2 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 1 AND 50
    AND
    p.score BETWEEN 11 AND 20
  ) AS a ON a.tmpid = 2
INNER JOIN (
  SELECT 2 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 51 AND 100
    AND
    p.score BETWEEN 11 AND 20
  ) AS b ON b.tmpid = 2
INNER JOIN (
  SELECT 2 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 101 AND 150
    AND
    p.score BETWEEN 11 AND 20
  ) AS c ON c.tmpid = 2
INNER JOIN (
  SELECT 2 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 151 AND 200
    AND
    p.score BETWEEN 11 AND 20
  ) AS d ON d.tmpid = 2
INNER JOIN (
  SELECT 2 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 201 AND 250
    AND
    p.score BETWEEN 11 AND 20
  ) AS e ON e.tmpid = 2
INNER JOIN (
  SELECT 2 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 251 AND 300
    AND
    p.score BETWEEN 11 AND 20
  ) AS f ON f.tmpid = 2
INNER JOIN (
  SELECT 2 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 301 AND 350
    AND
    p.score BETWEEN 11 AND 20
  ) AS g ON g.tmpid = 2
INNER JOIN (
  SELECT 2 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 351 AND 400
    AND
    p.score BETWEEN 11 AND 20
  ) AS h ON h.tmpid = 2
INNER JOIN (
  SELECT 2 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 401 AND 450
    AND
    p.score BETWEEN 11 AND 20
  ) AS i ON i.tmpid = 2
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 51 AND 100
  AND
  p.score BETWEEN 11 AND 20
UNION
SELECT 3 AS id, COUNT(*) AS 'MTL < 1', a.countOf, b.countOf, c.countOf, d.countOf, e.countOf, f.countOf, g.countOf, h.countOf, i.countOf
FROM posts p
INNER JOIN (
  SELECT 3 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 1 AND 50
    AND
    p.score BETWEEN 21 AND 30
  ) AS a ON a.tmpid = 3
INNER JOIN (
  SELECT 3 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 51 AND 100
    AND
    p.score BETWEEN 21 AND 30
  ) AS b ON b.tmpid = 3
INNER JOIN (
  SELECT 3 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 101 AND 150
    AND
    p.score BETWEEN 21 AND 30
  ) AS c ON c.tmpid = 3
INNER JOIN (
  SELECT 3 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 151 AND 200
    AND
    p.score BETWEEN 21 AND 30
  ) AS d ON d.tmpid = 3
INNER JOIN (
  SELECT 3 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 201 AND 250
    AND
    p.score BETWEEN 21 AND 30
  ) AS e ON e.tmpid = 3
INNER JOIN (
  SELECT 3 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 251 AND 300
    AND
    p.score BETWEEN 21 AND 30
  ) AS f ON f.tmpid = 3
INNER JOIN (
  SELECT 3 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 301 AND 350
    AND
    p.score BETWEEN 21 AND 30
  ) AS g ON g.tmpid = 3
INNER JOIN (
  SELECT 3 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 351 AND 400
    AND
    p.score BETWEEN 21 AND 30
  ) AS h ON h.tmpid = 3
INNER JOIN (
  SELECT 3 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 401 AND 450
    AND
    p.score BETWEEN 21 AND 30
  ) AS i ON i.tmpid = 3
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 101 AND 150
  AND
  p.score BETWEEN 21 AND 30
UNION
SELECT 4 AS id, COUNT(*) AS 'MTL < 1', a.countOf, b.countOf, c.countOf, d.countOf, e.countOf, f.countOf, g.countOf, h.countOf, i.countOf
FROM posts p
INNER JOIN (
  SELECT 4 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 1 AND 50
    AND
    p.score BETWEEN 31 AND 40
  ) AS a ON a.tmpid = 4
INNER JOIN (
  SELECT 4 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 51 AND 100
    AND
    p.score BETWEEN 31 AND 40
  ) AS b ON b.tmpid = 4
INNER JOIN (
  SELECT 4 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 101 AND 150
    AND
    p.score BETWEEN 31 AND 40
  ) AS c ON c.tmpid = 4
INNER JOIN (
  SELECT 4 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 151 AND 200
    AND
    p.score BETWEEN 31 AND 40
  ) AS d ON d.tmpid = 4
INNER JOIN (
  SELECT 4 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 201 AND 250
    AND
    p.score BETWEEN 31 AND 40
  ) AS e ON e.tmpid = 4
INNER JOIN (
  SELECT 4 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 251 AND 300
    AND
    p.score BETWEEN 31 AND 40
  ) AS f ON f.tmpid = 4
INNER JOIN (
  SELECT 4 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 301 AND 350
    AND
    p.score BETWEEN 31 AND 40
  ) AS g ON g.tmpid = 4
INNER JOIN (
  SELECT 4 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 351 AND 400
    AND
    p.score BETWEEN 31 AND 40
  ) AS h ON h.tmpid = 4
INNER JOIN (
  SELECT 4 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 401 AND 450
    AND
    p.score BETWEEN 31 AND 40
  ) AS i ON i.tmpid = 4
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 151 AND 200
  AND
  p.score BETWEEN 31 AND 40
UNION
SELECT 5 AS id, COUNT(*) AS 'MTL < 1', a.countOf, b.countOf, c.countOf, d.countOf, e.countOf, f.countOf, g.countOf, h.countOf, i.countOf
FROM posts p
INNER JOIN (
  SELECT 5 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 1 AND 50
    AND
    p.score BETWEEN 41 AND 50
  ) AS a ON a.tmpid = 5
INNER JOIN (
  SELECT 5 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 51 AND 100
    AND
    p.score BETWEEN 41 AND 50
  ) AS b ON b.tmpid = 5
INNER JOIN (
  SELECT 5 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 101 AND 150
    AND
    p.score BETWEEN 41 AND 50
  ) AS c ON c.tmpid = 5
INNER JOIN (
  SELECT 5 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 151 AND 200
    AND
    p.score BETWEEN 41 AND 50
  ) AS d ON d.tmpid = 5
INNER JOIN (
  SELECT 5 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 201 AND 250
    AND
    p.score BETWEEN 41 AND 50
  ) AS e ON e.tmpid = 5
INNER JOIN (
  SELECT 5 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 251 AND 300
    AND
    p.score BETWEEN 41 AND 50
  ) AS f ON f.tmpid = 5
INNER JOIN (
  SELECT 5 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 301 AND 350
    AND
    p.score BETWEEN 41 AND 50
  ) AS g ON g.tmpid = 5
INNER JOIN (
  SELECT 5 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 351 AND 400
    AND
    p.score BETWEEN 41 AND 50
  ) AS h ON h.tmpid = 5
INNER JOIN (
  SELECT 5 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 401 AND 450
    AND
    p.score BETWEEN 41 AND 50
  ) AS i ON i.tmpid = 5
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 201 AND 250
  AND
  p.score BETWEEN 41 AND 50
UNION
SELECT 6 AS id, COUNT(*) AS 'MTL < 1', a.countOf, b.countOf, c.countOf, d.countOf, e.countOf, f.countOf, g.countOf, h.countOf, i.countOf
FROM posts p
INNER JOIN (
  SELECT 6 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 1 AND 50
    AND
    p.score BETWEEN 51 AND 60
  ) AS a ON a.tmpid = 6
INNER JOIN (
  SELECT 6 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 51 AND 100
    AND
    p.score BETWEEN 51 AND 60
  ) AS b ON b.tmpid = 6
INNER JOIN (
  SELECT 6 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 101 AND 150
    AND
    p.score BETWEEN 51 AND 60
  ) AS c ON c.tmpid = 6
INNER JOIN (
  SELECT 6 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 151 AND 200
    AND
    p.score BETWEEN 51 AND 60
  ) AS d ON d.tmpid = 6
INNER JOIN (
  SELECT 6 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 201 AND 250
    AND
    p.score BETWEEN 51 AND 60
  ) AS e ON e.tmpid = 6
INNER JOIN (
  SELECT 6 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 251 AND 300
    AND
    p.score BETWEEN 51 AND 60
  ) AS f ON f.tmpid = 6
INNER JOIN (
  SELECT 6 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 301 AND 350
    AND
    p.score BETWEEN 51 AND 60
  ) AS g ON g.tmpid = 6
INNER JOIN (
  SELECT 6 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 351 AND 400
    AND
    p.score BETWEEN 51 AND 60
  ) AS h ON h.tmpid = 6
INNER JOIN (
  SELECT 6 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 401 AND 450
    AND
    p.score BETWEEN 51 AND 60
  ) AS i ON i.tmpid = 6
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 251 AND 300
  AND
  p.score BETWEEN 51 AND 60
UNION
SELECT 7 AS id, COUNT(*) AS 'MTL < 1', a.countOf, b.countOf, c.countOf, d.countOf, e.countOf, f.countOf, g.countOf, h.countOf, i.countOf
FROM posts p
INNER JOIN (
  SELECT 7 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 1 AND 50
    AND
    p.score BETWEEN 61 AND 70
  ) AS a ON a.tmpid = 7
INNER JOIN (
  SELECT 7 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 51 AND 100
    AND
    p.score BETWEEN 61 AND 70
  ) AS b ON b.tmpid = 7
INNER JOIN (
  SELECT 7 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 101 AND 150
    AND
    p.score BETWEEN 61 AND 70
  ) AS c ON c.tmpid = 7
INNER JOIN (
  SELECT 7 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 151 AND 200
    AND
    p.score BETWEEN 61 AND 70
  ) AS d ON d.tmpid = 7
INNER JOIN (
  SELECT 7 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 201 AND 250
    AND
    p.score BETWEEN 61 AND 70
  ) AS e ON e.tmpid = 7
INNER JOIN (
  SELECT 7 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 251 AND 300
    AND
    p.score BETWEEN 61 AND 70
  ) AS f ON f.tmpid = 7
INNER JOIN (
  SELECT 7 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 301 AND 350
    AND
    p.score BETWEEN 61 AND 70
  ) AS g ON g.tmpid = 7
INNER JOIN (
  SELECT 7 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 351 AND 400
    AND
    p.score BETWEEN 61 AND 70
  ) AS h ON h.tmpid = 7
INNER JOIN (
  SELECT 7 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 401 AND 450
    AND
    p.score BETWEEN 61 AND 70
  ) AS i ON i.tmpid = 7
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 301 AND 350
  AND
  p.score BETWEEN 61 AND 70
UNION
SELECT 8 AS id, COUNT(*) AS 'MTL < 1', a.countOf, b.countOf, c.countOf, d.countOf, e.countOf, f.countOf, g.countOf, h.countOf, i.countOf
FROM posts p
INNER JOIN (
  SELECT 8 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 1 AND 50
    AND
    p.score BETWEEN 71 AND 80
  ) AS a ON a.tmpid = 8
INNER JOIN (
  SELECT 8 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 51 AND 100
    AND
    p.score BETWEEN 71 AND 80
  ) AS b ON b.tmpid = 8
INNER JOIN (
  SELECT 8 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 101 AND 150
    AND
    p.score BETWEEN 71 AND 80
  ) AS c ON c.tmpid = 8
INNER JOIN (
  SELECT 8 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 151 AND 200
    AND
    p.score BETWEEN 71 AND 80
  ) AS d ON d.tmpid = 8
INNER JOIN (
  SELECT 8 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 201 AND 250
    AND
    p.score BETWEEN 71 AND 80
  ) AS e ON e.tmpid = 8
INNER JOIN (
  SELECT 8 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 251 AND 300
    AND
    p.score BETWEEN 71 AND 80
  ) AS f ON f.tmpid = 8
INNER JOIN (
  SELECT 8 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 301 AND 350
    AND
    p.score BETWEEN 71 AND 80
  ) AS g ON g.tmpid = 8
INNER JOIN (
  SELECT 8 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 351 AND 400
    AND
    p.score BETWEEN 71 AND 80
  ) AS h ON h.tmpid = 8
INNER JOIN (
  SELECT 8 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 401 AND 450
    AND
    p.score BETWEEN 71 AND 80
  ) AS i ON i.tmpid = 8
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 351 AND 400
  AND
  p.score BETWEEN 71 AND 80
UNION
SELECT 9 AS id, COUNT(*) AS 'MTL < 1', a.countOf, b.countOf, c.countOf, d.countOf, e.countOf, f.countOf, g.countOf, h.countOf, i.countOf
FROM posts p
INNER JOIN (
  SELECT 9 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 1 AND 50
    AND
    p.score BETWEEN 81 AND 90
  ) AS a ON a.tmpid = 9
INNER JOIN (
  SELECT 9 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 51 AND 100
    AND
    p.score BETWEEN 81 AND 90
  ) AS b ON b.tmpid = 9
INNER JOIN (
  SELECT 9 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 101 AND 150
    AND
    p.score BETWEEN 81 AND 90
  ) AS c ON c.tmpid = 9
INNER JOIN (
  SELECT 9 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 151 AND 200
    AND
    p.score BETWEEN 81 AND 90
  ) AS d ON d.tmpid = 9
INNER JOIN (
  SELECT 9 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 201 AND 250
    AND
    p.score BETWEEN 81 AND 90
  ) AS e ON e.tmpid = 9
INNER JOIN (
  SELECT 9 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 251 AND 300
    AND
    p.score BETWEEN 81 AND 90
  ) AS f ON f.tmpid = 9
INNER JOIN (
  SELECT 9 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 301 AND 350
    AND
    p.score BETWEEN 81 AND 90
  ) AS g ON g.tmpid = 9
INNER JOIN (
  SELECT 9 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 351 AND 400
    AND
    p.score BETWEEN 81 AND 90
  ) AS h ON h.tmpid = 9
INNER JOIN (
  SELECT 9 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 401 AND 450
    AND
    p.score BETWEEN 81 AND 90
  ) AS i ON i.tmpid = 9
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 401 AND 450
  AND
  p.score BETWEEN 81 AND 90
UNION
SELECT 10 AS id, COUNT(*) AS 'MTL < 1', a.countOf, b.countOf, c.countOf, d.countOf, e.countOf, f.countOf, g.countOf, h.countOf, i.countOf
FROM posts p
INNER JOIN (
  SELECT 10 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 1 AND 50
    AND
    p.score BETWEEN 91 AND 100
  ) AS a ON a.tmpid = 10
INNER JOIN (
  SELECT 10 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 51 AND 100
    AND
    p.score BETWEEN 91 AND 100
  ) AS b ON b.tmpid = 10
INNER JOIN (
  SELECT 10 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 101 AND 150
    AND
    p.score BETWEEN 91 AND 100
  ) AS c ON c.tmpid = 10
INNER JOIN (
  SELECT 10 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 151 AND 200
    AND
    p.score BETWEEN 91 AND 100
  ) AS d ON d.tmpid = 10
INNER JOIN (
  SELECT 10 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 201 AND 250
    AND
    p.score BETWEEN 91 AND 100
  ) AS e ON e.tmpid = 10
INNER JOIN (
  SELECT 10 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 251 AND 300
    AND
    p.score BETWEEN 91 AND 100
  ) AS f ON f.tmpid = 10
INNER JOIN (
  SELECT 10 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 301 AND 350
    AND
    p.score BETWEEN 91 AND 100
  ) AS g ON g.tmpid = 10
INNER JOIN (
  SELECT 10 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 351 AND 400
    AND
    p.score BETWEEN 91 AND 100
  ) AS h ON h.tmpid = 10
INNER JOIN (
  SELECT 10 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 401 AND 450
    AND
    p.score BETWEEN 91 AND 100
  ) AS i ON i.tmpid = 10
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 451 AND 500
  AND
  p.score BETWEEN 91 AND 100
UNION
SELECT 11 AS id, COUNT(*) AS 'MTL < 1', a.countOf, b.countOf, c.countOf, d.countOf, e.countOf, f.countOf, g.countOf, h.countOf, i.countOf
FROM posts p
INNER JOIN (
  SELECT 11 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 1 AND 50
    AND
    p.score BETWEEN 101 AND 110
  ) AS a ON a.tmpid = 11
INNER JOIN (
  SELECT 11 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 51 AND 100
    AND
    p.score BETWEEN 101 AND 110
  ) AS b ON b.tmpid = 11
INNER JOIN (
  SELECT 11 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 101 AND 150
    AND
    p.score BETWEEN 101 AND 110
  ) AS c ON c.tmpid = 11
INNER JOIN (
  SELECT 11 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 151 AND 200
    AND
    p.score BETWEEN 101 AND 110
  ) AS d ON d.tmpid = 11
INNER JOIN (
  SELECT 11 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 201 AND 250
    AND
    p.score BETWEEN 101 AND 110
  ) AS e ON e.tmpid = 11
INNER JOIN (
  SELECT 11 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 251 AND 300
    AND
    p.score BETWEEN 101 AND 110
  ) AS f ON f.tmpid = 11
INNER JOIN (
  SELECT 11 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 301 AND 350
    AND
    p.score BETWEEN 101 AND 110
  ) AS g ON g.tmpid = 11
INNER JOIN (
  SELECT 11 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 351 AND 400
    AND
    p.score BETWEEN 101 AND 110
  ) AS h ON h.tmpid = 11
INNER JOIN (
  SELECT 11 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 401 AND 450
    AND
    p.score BETWEEN 101 AND 110
  ) AS i ON i.tmpid = 11
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 501 AND 550
  AND
  p.score BETWEEN 101 AND 110
UNION
SELECT 12 AS id, COUNT(*) AS 'MTL < 1', a.countOf, b.countOf, c.countOf, d.countOf, e.countOf, f.countOf, g.countOf, h.countOf, i.countOf
FROM posts p
INNER JOIN (
  SELECT 12 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 1 AND 50
    AND
    p.score BETWEEN 111 AND 120
  ) AS a ON a.tmpid = 12
INNER JOIN (
  SELECT 12 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 51 AND 100
    AND
    p.score BETWEEN 111 AND 120
  ) AS b ON b.tmpid = 12
INNER JOIN (
  SELECT 12 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 101 AND 150
    AND
    p.score BETWEEN 111 AND 120
  ) AS c ON c.tmpid = 12
INNER JOIN (
  SELECT 12 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 151 AND 200
    AND
    p.score BETWEEN 111 AND 120
  ) AS d ON d.tmpid = 12
INNER JOIN (
  SELECT 12 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 201 AND 250
    AND
    p.score BETWEEN 111 AND 120
  ) AS e ON e.tmpid = 12
INNER JOIN (
  SELECT 12 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 251 AND 300
    AND
    p.score BETWEEN 111 AND 120
  ) AS f ON f.tmpid = 12
INNER JOIN (
  SELECT 12 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 301 AND 350
    AND
    p.score BETWEEN 111 AND 120
  ) AS g ON g.tmpid = 12
INNER JOIN (
  SELECT 12 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 351 AND 400
    AND
    p.score BETWEEN 111 AND 120
  ) AS h ON h.tmpid = 12
INNER JOIN (
  SELECT 12 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 401 AND 450
    AND
    p.score BETWEEN 111 AND 120
  ) AS i ON i.tmpid = 12
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 551 AND 600
  AND
  p.score BETWEEN 111 AND 120
UNION
SELECT 13 AS id, COUNT(*) AS 'MTL < 1', a.countOf, b.countOf, c.countOf, d.countOf, e.countOf, f.countOf, g.countOf, h.countOf, i.countOf
FROM posts p
INNER JOIN (
  SELECT 13 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 1 AND 50
    AND
    p.score BETWEEN 121 AND 130
  ) AS a ON a.tmpid = 13
INNER JOIN (
  SELECT 13 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 51 AND 100
    AND
    p.score BETWEEN 121 AND 130
  ) AS b ON b.tmpid = 13
INNER JOIN (
  SELECT 13 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 101 AND 150
    AND
    p.score BETWEEN 121 AND 130
  ) AS c ON c.tmpid = 13
INNER JOIN (
  SELECT 13 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 151 AND 200
    AND
    p.score BETWEEN 121 AND 130
  ) AS d ON d.tmpid = 13
INNER JOIN (
  SELECT 13 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 201 AND 250
    AND
    p.score BETWEEN 121 AND 130
  ) AS e ON e.tmpid = 13
INNER JOIN (
  SELECT 13 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 251 AND 300
    AND
    p.score BETWEEN 121 AND 130
  ) AS f ON f.tmpid = 13
INNER JOIN (
  SELECT 13 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 301 AND 350
    AND
    p.score BETWEEN 121 AND 130
  ) AS g ON g.tmpid = 13
INNER JOIN (
  SELECT 13 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 351 AND 400
    AND
    p.score BETWEEN 121 AND 130
  ) AS h ON h.tmpid = 13
INNER JOIN (
  SELECT 13 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 401 AND 450
    AND
    p.score BETWEEN 121 AND 130
  ) AS i ON i.tmpid = 13
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 601 AND 650
  AND
  p.score BETWEEN 121 AND 130
UNION
SELECT 14 AS id, COUNT(*) AS 'MTL < 1', a.countOf, b.countOf, c.countOf, d.countOf, e.countOf, f.countOf, g.countOf, h.countOf, i.countOf
FROM posts p
INNER JOIN (
  SELECT 14 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 1 AND 50
    AND
    p.score BETWEEN 131 AND 140
  ) AS a ON a.tmpid = 14
INNER JOIN (
  SELECT 14 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 51 AND 100
    AND
    p.score BETWEEN 131 AND 140
  ) AS b ON b.tmpid = 14
INNER JOIN (
  SELECT 14 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 101 AND 150
    AND
    p.score BETWEEN 131 AND 140
  ) AS c ON c.tmpid = 14
INNER JOIN (
  SELECT 14 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 151 AND 200
    AND
    p.score BETWEEN 131 AND 140
  ) AS d ON d.tmpid = 14
INNER JOIN (
  SELECT 14 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 201 AND 250
    AND
    p.score BETWEEN 131 AND 140
  ) AS e ON e.tmpid = 14
INNER JOIN (
  SELECT 14 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 251 AND 300
    AND
    p.score BETWEEN 131 AND 140
  ) AS f ON f.tmpid = 14
INNER JOIN (
  SELECT 14 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 301 AND 350
    AND
    p.score BETWEEN 131 AND 140
  ) AS g ON g.tmpid = 14
INNER JOIN (
  SELECT 14 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 351 AND 400
    AND
    p.score BETWEEN 131 AND 140
  ) AS h ON h.tmpid = 14
INNER JOIN (
  SELECT 14 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 401 AND 450
    AND
    p.score BETWEEN 131 AND 140
  ) AS i ON i.tmpid = 14
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 651 AND 700
  AND
  p.score BETWEEN 131 AND 140
UNION
SELECT 15 AS id, COUNT(*) AS 'MTL < 1', a.countOf, b.countOf, c.countOf, d.countOf, e.countOf, f.countOf, g.countOf, h.countOf, i.countOf
FROM posts p
INNER JOIN (
  SELECT 15 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 1 AND 50
    AND
    p.score BETWEEN 141 AND 150
  ) AS a ON a.tmpid = 15
INNER JOIN (
  SELECT 15 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 51 AND 100
    AND
    p.score BETWEEN 141 AND 150
  ) AS b ON b.tmpid = 15
INNER JOIN (
  SELECT 15 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 101 AND 150
    AND
    p.score BETWEEN 141 AND 150
  ) AS c ON c.tmpid = 15
INNER JOIN (
  SELECT 15 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 151 AND 200
    AND
    p.score BETWEEN 141 AND 150
  ) AS d ON d.tmpid = 15
INNER JOIN (
  SELECT 15 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 201 AND 250
    AND
    p.score BETWEEN 141 AND 150
  ) AS e ON e.tmpid = 15
INNER JOIN (
  SELECT 15 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 251 AND 300
    AND
    p.score BETWEEN 141 AND 150
  ) AS f ON f.tmpid = 15
INNER JOIN (
  SELECT 15 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 301 AND 350
    AND
    p.score BETWEEN 141 AND 150
  ) AS g ON g.tmpid = 15
INNER JOIN (
  SELECT 15 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 351 AND 400
    AND
    p.score BETWEEN 141 AND 150
  ) AS h ON h.tmpid = 15
INNER JOIN (
  SELECT 15 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 401 AND 450
    AND
    p.score BETWEEN 141 AND 150
  ) AS i ON i.tmpid = 15
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 701 AND 750
  AND
  p.score BETWEEN 141 AND 150
UNION
SELECT 16 AS id, COUNT(*) AS 'MTL < 1', a.countOf, b.countOf, c.countOf, d.countOf, e.countOf, f.countOf, g.countOf, h.countOf, i.countOf
FROM posts p
INNER JOIN (
  SELECT 16 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 1 AND 50
    AND
    p.score BETWEEN 151 AND 160
  ) AS a ON a.tmpid = 16
INNER JOIN (
  SELECT 16 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 51 AND 100
    AND
    p.score BETWEEN 151 AND 160
  ) AS b ON b.tmpid = 16
INNER JOIN (
  SELECT 16 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 101 AND 150
    AND
    p.score BETWEEN 151 AND 160
  ) AS c ON c.tmpid = 16
INNER JOIN (
  SELECT 16 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 151 AND 200
    AND
    p.score BETWEEN 151 AND 160
  ) AS d ON d.tmpid = 16
INNER JOIN (
  SELECT 16 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 201 AND 250
    AND
    p.score BETWEEN 151 AND 160
  ) AS e ON e.tmpid = 16
INNER JOIN (
  SELECT 16 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 251 AND 300
    AND
    p.score BETWEEN 151 AND 160
  ) AS f ON f.tmpid = 16
INNER JOIN (
  SELECT 16 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 301 AND 350
    AND
    p.score BETWEEN 151 AND 160
  ) AS g ON g.tmpid = 16
INNER JOIN (
  SELECT 16 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 351 AND 400
    AND
    p.score BETWEEN 151 AND 160
  ) AS h ON h.tmpid = 16
INNER JOIN (
  SELECT 16 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 401 AND 450
    AND
    p.score BETWEEN 151 AND 160
  ) AS i ON i.tmpid = 16
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 751 AND 800
  AND
  p.score BETWEEN 151 AND 160
UNION
SELECT 17 AS id, COUNT(*) AS 'MTL < 1', a.countOf, b.countOf, c.countOf, d.countOf, e.countOf, f.countOf, g.countOf, h.countOf, i.countOf
FROM posts p
INNER JOIN (
  SELECT 17 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 1 AND 50
    AND
    p.score BETWEEN 161 AND 170
  ) AS a ON a.tmpid = 17
INNER JOIN (
  SELECT 17 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 51 AND 100
    AND
    p.score BETWEEN 161 AND 170
  ) AS b ON b.tmpid = 17
INNER JOIN (
  SELECT 17 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 101 AND 150
    AND
    p.score BETWEEN 161 AND 170
  ) AS c ON c.tmpid = 17
INNER JOIN (
  SELECT 17 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 151 AND 200
    AND
    p.score BETWEEN 161 AND 170
  ) AS d ON d.tmpid = 17
INNER JOIN (
  SELECT 17 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 201 AND 250
    AND
    p.score BETWEEN 161 AND 170
  ) AS e ON e.tmpid = 17
INNER JOIN (
  SELECT 17 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 251 AND 300
    AND
    p.score BETWEEN 161 AND 170
  ) AS f ON f.tmpid = 17
INNER JOIN (
  SELECT 17 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 301 AND 350
    AND
    p.score BETWEEN 161 AND 170
  ) AS g ON g.tmpid = 17
INNER JOIN (
  SELECT 17 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 351 AND 400
    AND
    p.score BETWEEN 161 AND 170
  ) AS h ON h.tmpid = 17
INNER JOIN (
  SELECT 17 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 401 AND 450
    AND
    p.score BETWEEN 161 AND 170
  ) AS i ON i.tmpid = 17
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 801 AND 850
  AND
  p.score BETWEEN 161 AND 170
UNION
SELECT 18 AS id, COUNT(*) AS 'MTL < 1', a.countOf, b.countOf, c.countOf, d.countOf, e.countOf, f.countOf, g.countOf, h.countOf, i.countOf
FROM posts p
INNER JOIN (
  SELECT 18 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 1 AND 50
    AND
    p.score BETWEEN 171 AND 180
  ) AS a ON a.tmpid = 18
INNER JOIN (
  SELECT 18 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 51 AND 100
    AND
    p.score BETWEEN 171 AND 180
  ) AS b ON b.tmpid = 18
INNER JOIN (
  SELECT 18 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 101 AND 150
    AND
    p.score BETWEEN 171 AND 180
  ) AS c ON c.tmpid = 18
INNER JOIN (
  SELECT 18 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 151 AND 200
    AND
    p.score BETWEEN 171 AND 180
  ) AS d ON d.tmpid = 18
INNER JOIN (
  SELECT 18 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 201 AND 250
    AND
    p.score BETWEEN 171 AND 180
  ) AS e ON e.tmpid = 18
INNER JOIN (
  SELECT 18 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 251 AND 300
    AND
    p.score BETWEEN 171 AND 180
  ) AS f ON f.tmpid = 18
INNER JOIN (
  SELECT 18 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 301 AND 350
    AND
    p.score BETWEEN 171 AND 180
  ) AS g ON g.tmpid = 18
INNER JOIN (
  SELECT 18 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 351 AND 400
    AND
    p.score BETWEEN 171 AND 180
  ) AS h ON h.tmpid = 18
INNER JOIN (
  SELECT 18 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 401 AND 450
    AND
    p.score BETWEEN 171 AND 180
  ) AS i ON i.tmpid = 18
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 851 AND 900
  AND
  p.score BETWEEN 171 AND 180
UNION
SELECT 19 AS id, COUNT(*) AS 'MTL < 1', a.countOf, b.countOf, c.countOf, d.countOf, e.countOf, f.countOf, g.countOf, h.countOf, i.countOf
FROM posts p
INNER JOIN (
  SELECT 19 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 1 AND 50
    AND
    p.score BETWEEN 181 AND 190
  ) AS a ON a.tmpid = 19
INNER JOIN (
  SELECT 19 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 51 AND 100
    AND
    p.score BETWEEN 181 AND 190
  ) AS b ON b.tmpid = 19
INNER JOIN (
  SELECT 19 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 101 AND 150
    AND
    p.score BETWEEN 181 AND 190
  ) AS c ON c.tmpid = 19
INNER JOIN (
  SELECT 19 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 151 AND 200
    AND
    p.score BETWEEN 181 AND 190
  ) AS d ON d.tmpid = 19
INNER JOIN (
  SELECT 19 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 201 AND 250
    AND
    p.score BETWEEN 181 AND 190
  ) AS e ON e.tmpid = 19
INNER JOIN (
  SELECT 19 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 251 AND 300
    AND
    p.score BETWEEN 181 AND 190
  ) AS f ON f.tmpid = 19
INNER JOIN (
  SELECT 19 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 301 AND 350
    AND
    p.score BETWEEN 181 AND 190
  ) AS g ON g.tmpid = 19
INNER JOIN (
  SELECT 19 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 351 AND 400
    AND
    p.score BETWEEN 181 AND 190
  ) AS h ON h.tmpid = 19
INNER JOIN (
  SELECT 19 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 401 AND 450
    AND
    p.score BETWEEN 181 AND 190
  ) AS i ON i.tmpid = 19
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 901 AND 950
  AND
  p.score BETWEEN 181 AND 190
UNION
SELECT 20 AS id, COUNT(*) AS 'MTL < 1', a.countOf, b.countOf, c.countOf, d.countOf, e.countOf, f.countOf, g.countOf, h.countOf, i.countOf
FROM posts p
INNER JOIN (
  SELECT 20 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 1 AND 50
    AND
    p.score BETWEEN 191 AND 200
  ) AS a ON a.tmpid = 20
INNER JOIN (
  SELECT 20 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 51 AND 100
    AND
    p.score BETWEEN 191 AND 200
  ) AS b ON b.tmpid = 20
INNER JOIN (
  SELECT 20 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 101 AND 150
    AND
    p.score BETWEEN 191 AND 200
  ) AS c ON c.tmpid = 20
INNER JOIN (
  SELECT 20 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 151 AND 200
    AND
    p.score BETWEEN 191 AND 200
  ) AS d ON d.tmpid = 20
INNER JOIN (
  SELECT 20 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 201 AND 250
    AND
    p.score BETWEEN 191 AND 200
  ) AS e ON e.tmpid = 20
INNER JOIN (
  SELECT 20 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 251 AND 300
    AND
    p.score BETWEEN 191 AND 200
  ) AS f ON f.tmpid = 20
INNER JOIN (
  SELECT 20 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 301 AND 350
    AND
    p.score BETWEEN 191 AND 200
  ) AS g ON g.tmpid = 20
INNER JOIN (
  SELECT 20 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 351 AND 400
    AND
    p.score BETWEEN 191 AND 200
  ) AS h ON h.tmpid = 20
INNER JOIN (
  SELECT 20 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 401 AND 450
    AND
    p.score BETWEEN 191 AND 200
  ) AS i ON i.tmpid = 20
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 951 AND 1000
  AND
  p.score BETWEEN 191 AND 200
UNION
SELECT 21 AS id, COUNT(*) AS 'MTL < 1', a.countOf, b.countOf, c.countOf, d.countOf, e.countOf, f.countOf, g.countOf, h.countOf, i.countOf
FROM posts p
INNER JOIN (
  SELECT 21 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 1 AND 50
    AND
    p.score BETWEEN 201 AND 210
  ) AS a ON a.tmpid = 21
INNER JOIN (
  SELECT 21 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 51 AND 100
    AND
    p.score BETWEEN 201 AND 210
  ) AS b ON b.tmpid = 21
INNER JOIN (
  SELECT 21 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 101 AND 150
    AND
    p.score BETWEEN 201 AND 210
  ) AS c ON c.tmpid = 21
INNER JOIN (
  SELECT 21 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 151 AND 200
    AND
    p.score BETWEEN 201 AND 210
  ) AS d ON d.tmpid = 21
INNER JOIN (
  SELECT 21 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 201 AND 250
    AND
    p.score BETWEEN 201 AND 210
  ) AS e ON e.tmpid = 21
INNER JOIN (
  SELECT 21 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 251 AND 300
    AND
    p.score BETWEEN 201 AND 210
  ) AS f ON f.tmpid = 21
INNER JOIN (
  SELECT 21 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 301 AND 350
    AND
    p.score BETWEEN 201 AND 210
  ) AS g ON g.tmpid = 21
INNER JOIN (
  SELECT 21 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 351 AND 400
    AND
    p.score BETWEEN 201 AND 210
  ) AS h ON h.tmpid = 21
INNER JOIN (
  SELECT 21 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 401 AND 450
    AND
    p.score BETWEEN 201 AND 210
  ) AS i ON i.tmpid = 21
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 1001 AND 1050
  AND
  p.score BETWEEN 201 AND 210
UNION
SELECT 22 AS id, COUNT(*) AS 'MTL < 1', a.countOf, b.countOf, c.countOf, d.countOf, e.countOf, f.countOf, g.countOf, h.countOf, i.countOf
FROM posts p
INNER JOIN (
  SELECT 22 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 1 AND 50
    AND
    p.score BETWEEN 211 AND 220
  ) AS a ON a.tmpid = 22
INNER JOIN (
  SELECT 22 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 51 AND 100
    AND
    p.score BETWEEN 211 AND 220
  ) AS b ON b.tmpid = 22
INNER JOIN (
  SELECT 22 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 101 AND 150
    AND
    p.score BETWEEN 211 AND 220
  ) AS c ON c.tmpid = 22
INNER JOIN (
  SELECT 22 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 151 AND 200
    AND
    p.score BETWEEN 211 AND 220
  ) AS d ON d.tmpid = 22
INNER JOIN (
  SELECT 22 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 201 AND 250
    AND
    p.score BETWEEN 211 AND 220
  ) AS e ON e.tmpid = 22
INNER JOIN (
  SELECT 22 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 251 AND 300
    AND
    p.score BETWEEN 211 AND 220
  ) AS f ON f.tmpid = 22
INNER JOIN (
  SELECT 22 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 301 AND 350
    AND
    p.score BETWEEN 211 AND 220
  ) AS g ON g.tmpid = 22
INNER JOIN (
  SELECT 22 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 351 AND 400
    AND
    p.score BETWEEN 211 AND 220
  ) AS h ON h.tmpid = 22
INNER JOIN (
  SELECT 22 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 401 AND 450
    AND
    p.score BETWEEN 211 AND 220
  ) AS i ON i.tmpid = 22
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 1051 AND 1100
  AND
  p.score BETWEEN 211 AND 220
UNION
SELECT 23 AS id, COUNT(*) AS 'MTL < 1', a.countOf, b.countOf, c.countOf, d.countOf, e.countOf, f.countOf, g.countOf, h.countOf, i.countOf
FROM posts p
INNER JOIN (
  SELECT 23 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 1 AND 50
    AND
    p.score BETWEEN 221 AND 230
  ) AS a ON a.tmpid = 23
INNER JOIN (
  SELECT 23 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 51 AND 100
    AND
    p.score BETWEEN 221 AND 230
  ) AS b ON b.tmpid = 23
INNER JOIN (
  SELECT 23 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 101 AND 150
    AND
    p.score BETWEEN 221 AND 230
  ) AS c ON c.tmpid = 23
INNER JOIN (
  SELECT 23 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 151 AND 200
    AND
    p.score BETWEEN 221 AND 230
  ) AS d ON d.tmpid = 23
INNER JOIN (
  SELECT 23 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 201 AND 250
    AND
    p.score BETWEEN 221 AND 230
  ) AS e ON e.tmpid = 23
INNER JOIN (
  SELECT 23 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 251 AND 300
    AND
    p.score BETWEEN 221 AND 230
  ) AS f ON f.tmpid = 23
INNER JOIN (
  SELECT 23 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 301 AND 350
    AND
    p.score BETWEEN 221 AND 230
  ) AS g ON g.tmpid = 23
INNER JOIN (
  SELECT 23 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 351 AND 400
    AND
    p.score BETWEEN 221 AND 230
  ) AS h ON h.tmpid = 23
INNER JOIN (
  SELECT 23 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 401 AND 450
    AND
    p.score BETWEEN 221 AND 230
  ) AS i ON i.tmpid = 23
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 1101 AND 1150
  AND
  p.score BETWEEN 221 AND 230
UNION
SELECT 24 AS id, COUNT(*) AS 'MTL < 1', a.countOf, b.countOf, c.countOf, d.countOf, e.countOf, f.countOf, g.countOf, h.countOf, i.countOf
FROM posts p
INNER JOIN (
  SELECT 24 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 1 AND 50
    AND
    p.score BETWEEN 231 AND 240
  ) AS a ON a.tmpid = 24
INNER JOIN (
  SELECT 24 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 51 AND 100
    AND
    p.score BETWEEN 231 AND 240
  ) AS b ON b.tmpid = 24
INNER JOIN (
  SELECT 24 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 101 AND 150
    AND
    p.score BETWEEN 231 AND 240
  ) AS c ON c.tmpid = 24
INNER JOIN (
  SELECT 24 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 151 AND 200
    AND
    p.score BETWEEN 231 AND 240
  ) AS d ON d.tmpid = 24
INNER JOIN (
  SELECT 24 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 201 AND 250
    AND
    p.score BETWEEN 231 AND 240
  ) AS e ON e.tmpid = 24
INNER JOIN (
  SELECT 24 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 251 AND 300
    AND
    p.score BETWEEN 231 AND 240
  ) AS f ON f.tmpid = 24
INNER JOIN (
  SELECT 24 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 301 AND 350
    AND
    p.score BETWEEN 231 AND 240
  ) AS g ON g.tmpid = 24
INNER JOIN (
  SELECT 24 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 351 AND 400
    AND
    p.score BETWEEN 231 AND 240
  ) AS h ON h.tmpid = 24
INNER JOIN (
  SELECT 24 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 401 AND 450
    AND
    p.score BETWEEN 231 AND 240
  ) AS i ON i.tmpid = 24
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 1151 AND 1200
  AND
  p.score BETWEEN 231 AND 240
UNION
SELECT 25 AS id, COUNT(*) AS 'MTL < 1', a.countOf, b.countOf, c.countOf, d.countOf, e.countOf, f.countOf, g.countOf, h.countOf, i.countOf
FROM posts p
INNER JOIN (
  SELECT 25 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 1 AND 50
    AND
    p.score BETWEEN 241 AND 250
  ) AS a ON a.tmpid = 25
INNER JOIN (
  SELECT 25 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 51 AND 100
    AND
    p.score BETWEEN 241 AND 250
  ) AS b ON b.tmpid = 25
INNER JOIN (
  SELECT 25 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 101 AND 150
    AND
    p.score BETWEEN 241 AND 250
  ) AS c ON c.tmpid = 25
INNER JOIN (
  SELECT 25 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 151 AND 200
    AND
    p.score BETWEEN 241 AND 250
  ) AS d ON d.tmpid = 25
INNER JOIN (
  SELECT 25 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 201 AND 250
    AND
    p.score BETWEEN 241 AND 250
  ) AS e ON e.tmpid = 25
INNER JOIN (
  SELECT 25 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 251 AND 300
    AND
    p.score BETWEEN 241 AND 250
  ) AS f ON f.tmpid = 25
INNER JOIN (
  SELECT 25 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 301 AND 350
    AND
    p.score BETWEEN 241 AND 250
  ) AS g ON g.tmpid = 25
INNER JOIN (
  SELECT 25 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 351 AND 400
    AND
    p.score BETWEEN 241 AND 250
  ) AS h ON h.tmpid = 25
INNER JOIN (
  SELECT 25 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 401 AND 450
    AND
    p.score BETWEEN 241 AND 250
  ) AS i ON i.tmpid = 25
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 1201 AND 1250
  AND
  p.score BETWEEN 241 AND 250
UNION
SELECT 26 AS id, COUNT(*) AS 'MTL < 1', a.countOf, b.countOf, c.countOf, d.countOf, e.countOf, f.countOf, g.countOf, h.countOf, i.countOf
FROM posts p
INNER JOIN (
  SELECT 26 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 1 AND 50
    AND
    p.score BETWEEN 251 AND 260
  ) AS a ON a.tmpid = 26
INNER JOIN (
  SELECT 26 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 51 AND 100
    AND
    p.score BETWEEN 251 AND 260
  ) AS b ON b.tmpid = 26
INNER JOIN (
  SELECT 26 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 101 AND 150
    AND
    p.score BETWEEN 251 AND 260
  ) AS c ON c.tmpid = 26
INNER JOIN (
  SELECT 26 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 151 AND 200
    AND
    p.score BETWEEN 251 AND 260
  ) AS d ON d.tmpid = 26
INNER JOIN (
  SELECT 26 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 201 AND 250
    AND
    p.score BETWEEN 251 AND 260
  ) AS e ON e.tmpid = 26
INNER JOIN (
  SELECT 26 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 251 AND 300
    AND
    p.score BETWEEN 251 AND 260
  ) AS f ON f.tmpid = 26
INNER JOIN (
  SELECT 26 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 301 AND 350
    AND
    p.score BETWEEN 251 AND 260
  ) AS g ON g.tmpid = 26
INNER JOIN (
  SELECT 26 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 351 AND 400
    AND
    p.score BETWEEN 251 AND 260
  ) AS h ON h.tmpid = 26
INNER JOIN (
  SELECT 26 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 401 AND 450
    AND
    p.score BETWEEN 251 AND 260
  ) AS i ON i.tmpid = 26
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 1251 AND 1300
  AND
  p.score BETWEEN 251 AND 260
UNION
SELECT 27 AS id, COUNT(*) AS 'MTL < 1', a.countOf, b.countOf, c.countOf, d.countOf, e.countOf, f.countOf, g.countOf, h.countOf, i.countOf
FROM posts p
INNER JOIN (
  SELECT 27 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 1 AND 50
    AND
    p.score BETWEEN 261 AND 270
  ) AS a ON a.tmpid = 27
INNER JOIN (
  SELECT 27 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 51 AND 100
    AND
    p.score BETWEEN 261 AND 270
  ) AS b ON b.tmpid = 27
INNER JOIN (
  SELECT 27 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 101 AND 150
    AND
    p.score BETWEEN 261 AND 270
  ) AS c ON c.tmpid = 27
INNER JOIN (
  SELECT 27 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 151 AND 200
    AND
    p.score BETWEEN 261 AND 270
  ) AS d ON d.tmpid = 27
INNER JOIN (
  SELECT 27 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 201 AND 250
    AND
    p.score BETWEEN 261 AND 270
  ) AS e ON e.tmpid = 27
INNER JOIN (
  SELECT 27 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 251 AND 300
    AND
    p.score BETWEEN 261 AND 270
  ) AS f ON f.tmpid = 27
INNER JOIN (
  SELECT 27 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 301 AND 350
    AND
    p.score BETWEEN 261 AND 270
  ) AS g ON g.tmpid = 27
INNER JOIN (
  SELECT 27 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 351 AND 400
    AND
    p.score BETWEEN 261 AND 270
  ) AS h ON h.tmpid = 27
INNER JOIN (
  SELECT 27 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 401 AND 450
    AND
    p.score BETWEEN 261 AND 270
  ) AS i ON i.tmpid = 27
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 1301 AND 1350
  AND
  p.score BETWEEN 261 AND 270
UNION
SELECT 28 AS id, COUNT(*) AS 'MTL < 1', a.countOf, b.countOf, c.countOf, d.countOf, e.countOf, f.countOf, g.countOf, h.countOf, i.countOf
FROM posts p
INNER JOIN (
  SELECT 28 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 1 AND 50
    AND
    p.score BETWEEN 271 AND 280
  ) AS a ON a.tmpid = 28
INNER JOIN (
  SELECT 28 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 51 AND 100
    AND
    p.score BETWEEN 271 AND 280
  ) AS b ON b.tmpid = 28
INNER JOIN (
  SELECT 28 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 101 AND 150
    AND
    p.score BETWEEN 271 AND 280
  ) AS c ON c.tmpid = 28
INNER JOIN (
  SELECT 28 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 151 AND 200
    AND
    p.score BETWEEN 271 AND 280
  ) AS d ON d.tmpid = 28
INNER JOIN (
  SELECT 28 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 201 AND 250
    AND
    p.score BETWEEN 271 AND 280
  ) AS e ON e.tmpid = 28
INNER JOIN (
  SELECT 28 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 251 AND 300
    AND
    p.score BETWEEN 271 AND 280
  ) AS f ON f.tmpid = 28
INNER JOIN (
  SELECT 28 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 301 AND 350
    AND
    p.score BETWEEN 271 AND 280
  ) AS g ON g.tmpid = 28
INNER JOIN (
  SELECT 28 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 351 AND 400
    AND
    p.score BETWEEN 271 AND 280
  ) AS h ON h.tmpid = 28
INNER JOIN (
  SELECT 28 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 401 AND 450
    AND
    p.score BETWEEN 271 AND 280
  ) AS i ON i.tmpid = 28
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 1351 AND 1400
  AND
  p.score BETWEEN 271 AND 280
UNION
SELECT 29 AS id, COUNT(*) AS 'MTL < 1', a.countOf, b.countOf, c.countOf, d.countOf, e.countOf, f.countOf, g.countOf, h.countOf, i.countOf
FROM posts p
INNER JOIN (
  SELECT 29 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 1 AND 50
    AND
    p.score BETWEEN 281 AND 290
  ) AS a ON a.tmpid = 29
INNER JOIN (
  SELECT 29 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 51 AND 100
    AND
    p.score BETWEEN 281 AND 290
  ) AS b ON b.tmpid = 29
INNER JOIN (
  SELECT 29 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 101 AND 150
    AND
    p.score BETWEEN 281 AND 290
  ) AS c ON c.tmpid = 29
INNER JOIN (
  SELECT 29 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 151 AND 200
    AND
    p.score BETWEEN 281 AND 290
  ) AS d ON d.tmpid = 29
INNER JOIN (
  SELECT 29 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 201 AND 250
    AND
    p.score BETWEEN 281 AND 290
  ) AS e ON e.tmpid = 29
INNER JOIN (
  SELECT 29 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 251 AND 300
    AND
    p.score BETWEEN 281 AND 290
  ) AS f ON f.tmpid = 29
INNER JOIN (
  SELECT 29 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 301 AND 350
    AND
    p.score BETWEEN 281 AND 290
  ) AS g ON g.tmpid = 29
INNER JOIN (
  SELECT 29 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 351 AND 400
    AND
    p.score BETWEEN 281 AND 290
  ) AS h ON h.tmpid = 29
INNER JOIN (
  SELECT 29 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 401 AND 450
    AND
    p.score BETWEEN 281 AND 290
  ) AS i ON i.tmpid = 29
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 1401 AND 1450
  AND
  p.score BETWEEN 281 AND 290
UNION
SELECT 30 AS id, COUNT(*) AS 'MTL < 1', a.countOf, b.countOf, c.countOf, d.countOf, e.countOf, f.countOf, g.countOf, h.countOf, i.countOf
FROM posts p
INNER JOIN (
  SELECT 30 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 1 AND 50
    AND
    p.score BETWEEN 291 AND 300
  ) AS a ON a.tmpid = 30
INNER JOIN (
  SELECT 30 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 51 AND 100
    AND
    p.score BETWEEN 291 AND 300
  ) AS b ON b.tmpid = 30
INNER JOIN (
  SELECT 30 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 101 AND 150
    AND
    p.score BETWEEN 291 AND 300
  ) AS c ON c.tmpid = 30
INNER JOIN (
  SELECT 30 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 151 AND 200
    AND
    p.score BETWEEN 291 AND 300
  ) AS d ON d.tmpid = 30
INNER JOIN (
  SELECT 30 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 201 AND 250
    AND
    p.score BETWEEN 291 AND 300
  ) AS e ON e.tmpid = 30
INNER JOIN (
  SELECT 30 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 251 AND 300
    AND
    p.score BETWEEN 291 AND 300
  ) AS f ON f.tmpid = 30
INNER JOIN (
  SELECT 30 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 301 AND 350
    AND
    p.score BETWEEN 291 AND 300
  ) AS g ON g.tmpid = 30
INNER JOIN (
  SELECT 30 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 351 AND 400
    AND
    p.score BETWEEN 291 AND 300
  ) AS h ON h.tmpid = 30
INNER JOIN (
  SELECT 30 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 401 AND 450
    AND
    p.score BETWEEN 291 AND 300
  ) AS i ON i.tmpid = 30
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 1451 AND 1500
  AND
  p.score BETWEEN 291 AND 300