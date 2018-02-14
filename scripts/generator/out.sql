
SELECT 1 AS id, COUNT(*) AS '1 <= MLT <= 50', a.countOf AS '51 <= MLT <= 100', b.countOf AS '101 <= MLT <= 150', c.countOf AS '151 <= MLT <= 200', d.countOf AS '201 <= MLT <= 250', e.countOf AS '251 <= MLT <= 300', f.countOf AS '301 <= MLT <= 350', g.countOf AS '351 <= MLT <= 400', h.countOf AS '401 <= MLT <= 450', i.countOf AS '451 <= MLT <= 500', j.countOf AS '501 <= MLT <= 550', k.countOf AS '551 <= MLT <= 600', l.countOf AS '601 <= MLT <= 650', m.countOf AS '651 <= MLT <= 700', n.countOf AS '701 <= MLT <= 750', o.countOf AS '751 <= MLT <= 800', p.countOf AS '801 <= MLT <= 850', q.countOf AS '851 <= MLT <= 900', r.countOf AS '901 <= MLT <= 950', s.countOf AS '951 <= MLT <= 1000'
FROM posts p
INNER JOIN (
  SELECT 1 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 51 AND 100
    AND
    p.score BETWEEN 1 AND 10
  ) AS a ON a.tmpid = 1
INNER JOIN (
  SELECT 1 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 101 AND 150
    AND
    p.score BETWEEN 1 AND 10
  ) AS b ON b.tmpid = 1
INNER JOIN (
  SELECT 1 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 151 AND 200
    AND
    p.score BETWEEN 1 AND 10
  ) AS c ON c.tmpid = 1
INNER JOIN (
  SELECT 1 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 201 AND 250
    AND
    p.score BETWEEN 1 AND 10
  ) AS d ON d.tmpid = 1
INNER JOIN (
  SELECT 1 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 251 AND 300
    AND
    p.score BETWEEN 1 AND 10
  ) AS e ON e.tmpid = 1
INNER JOIN (
  SELECT 1 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 301 AND 350
    AND
    p.score BETWEEN 1 AND 10
  ) AS f ON f.tmpid = 1
INNER JOIN (
  SELECT 1 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 351 AND 400
    AND
    p.score BETWEEN 1 AND 10
  ) AS g ON g.tmpid = 1
INNER JOIN (
  SELECT 1 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 401 AND 450
    AND
    p.score BETWEEN 1 AND 10
  ) AS h ON h.tmpid = 1
INNER JOIN (
  SELECT 1 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 451 AND 500
    AND
    p.score BETWEEN 1 AND 10
  ) AS i ON i.tmpid = 1
INNER JOIN (
  SELECT 1 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 501 AND 550
    AND
    p.score BETWEEN 1 AND 10
  ) AS j ON j.tmpid = 1
INNER JOIN (
  SELECT 1 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 551 AND 600
    AND
    p.score BETWEEN 1 AND 10
  ) AS k ON k.tmpid = 1
INNER JOIN (
  SELECT 1 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 601 AND 650
    AND
    p.score BETWEEN 1 AND 10
  ) AS l ON l.tmpid = 1
INNER JOIN (
  SELECT 1 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 651 AND 700
    AND
    p.score BETWEEN 1 AND 10
  ) AS m ON m.tmpid = 1
INNER JOIN (
  SELECT 1 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 701 AND 750
    AND
    p.score BETWEEN 1 AND 10
  ) AS n ON n.tmpid = 1
INNER JOIN (
  SELECT 1 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 751 AND 800
    AND
    p.score BETWEEN 1 AND 10
  ) AS o ON o.tmpid = 1
INNER JOIN (
  SELECT 1 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 801 AND 850
    AND
    p.score BETWEEN 1 AND 10
  ) AS p ON p.tmpid = 1
INNER JOIN (
  SELECT 1 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 851 AND 900
    AND
    p.score BETWEEN 1 AND 10
  ) AS q ON q.tmpid = 1
INNER JOIN (
  SELECT 1 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 901 AND 950
    AND
    p.score BETWEEN 1 AND 10
  ) AS r ON r.tmpid = 1
INNER JOIN (
  SELECT 1 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 951 AND 1000
    AND
    p.score BETWEEN 1 AND 10
  ) AS s ON s.tmpid = 1
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 1 and 50
  AND
  p.score BETWEEN 1 AND 10
UNION
SELECT 2 AS id, COUNT(*) AS '1 <= MLT <= 50', a.countOf AS '51 <= MLT <= 100', b.countOf AS '101 <= MLT <= 150', c.countOf AS '151 <= MLT <= 200', d.countOf AS '201 <= MLT <= 250', e.countOf AS '251 <= MLT <= 300', f.countOf AS '301 <= MLT <= 350', g.countOf AS '351 <= MLT <= 400', h.countOf AS '401 <= MLT <= 450', i.countOf AS '451 <= MLT <= 500', j.countOf AS '501 <= MLT <= 550', k.countOf AS '551 <= MLT <= 600', l.countOf AS '601 <= MLT <= 650', m.countOf AS '651 <= MLT <= 700', n.countOf AS '701 <= MLT <= 750', o.countOf AS '751 <= MLT <= 800', p.countOf AS '801 <= MLT <= 850', q.countOf AS '851 <= MLT <= 900', r.countOf AS '901 <= MLT <= 950', s.countOf AS '951 <= MLT <= 1000'
FROM posts p
INNER JOIN (
  SELECT 2 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 51 AND 100
    AND
    p.score BETWEEN 11 AND 20
  ) AS a ON a.tmpid = 2
INNER JOIN (
  SELECT 2 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 101 AND 150
    AND
    p.score BETWEEN 11 AND 20
  ) AS b ON b.tmpid = 2
INNER JOIN (
  SELECT 2 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 151 AND 200
    AND
    p.score BETWEEN 11 AND 20
  ) AS c ON c.tmpid = 2
INNER JOIN (
  SELECT 2 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 201 AND 250
    AND
    p.score BETWEEN 11 AND 20
  ) AS d ON d.tmpid = 2
INNER JOIN (
  SELECT 2 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 251 AND 300
    AND
    p.score BETWEEN 11 AND 20
  ) AS e ON e.tmpid = 2
INNER JOIN (
  SELECT 2 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 301 AND 350
    AND
    p.score BETWEEN 11 AND 20
  ) AS f ON f.tmpid = 2
INNER JOIN (
  SELECT 2 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 351 AND 400
    AND
    p.score BETWEEN 11 AND 20
  ) AS g ON g.tmpid = 2
INNER JOIN (
  SELECT 2 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 401 AND 450
    AND
    p.score BETWEEN 11 AND 20
  ) AS h ON h.tmpid = 2
INNER JOIN (
  SELECT 2 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 451 AND 500
    AND
    p.score BETWEEN 11 AND 20
  ) AS i ON i.tmpid = 2
INNER JOIN (
  SELECT 2 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 501 AND 550
    AND
    p.score BETWEEN 11 AND 20
  ) AS j ON j.tmpid = 2
INNER JOIN (
  SELECT 2 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 551 AND 600
    AND
    p.score BETWEEN 11 AND 20
  ) AS k ON k.tmpid = 2
INNER JOIN (
  SELECT 2 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 601 AND 650
    AND
    p.score BETWEEN 11 AND 20
  ) AS l ON l.tmpid = 2
INNER JOIN (
  SELECT 2 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 651 AND 700
    AND
    p.score BETWEEN 11 AND 20
  ) AS m ON m.tmpid = 2
INNER JOIN (
  SELECT 2 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 701 AND 750
    AND
    p.score BETWEEN 11 AND 20
  ) AS n ON n.tmpid = 2
INNER JOIN (
  SELECT 2 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 751 AND 800
    AND
    p.score BETWEEN 11 AND 20
  ) AS o ON o.tmpid = 2
INNER JOIN (
  SELECT 2 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 801 AND 850
    AND
    p.score BETWEEN 11 AND 20
  ) AS p ON p.tmpid = 2
INNER JOIN (
  SELECT 2 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 851 AND 900
    AND
    p.score BETWEEN 11 AND 20
  ) AS q ON q.tmpid = 2
INNER JOIN (
  SELECT 2 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 901 AND 950
    AND
    p.score BETWEEN 11 AND 20
  ) AS r ON r.tmpid = 2
INNER JOIN (
  SELECT 2 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 951 AND 1000
    AND
    p.score BETWEEN 11 AND 20
  ) AS s ON s.tmpid = 2
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 1 and 50
  AND
  p.score BETWEEN 11 AND 20
UNION
SELECT 3 AS id, COUNT(*) AS '1 <= MLT <= 50', a.countOf AS '51 <= MLT <= 100', b.countOf AS '101 <= MLT <= 150', c.countOf AS '151 <= MLT <= 200', d.countOf AS '201 <= MLT <= 250', e.countOf AS '251 <= MLT <= 300', f.countOf AS '301 <= MLT <= 350', g.countOf AS '351 <= MLT <= 400', h.countOf AS '401 <= MLT <= 450', i.countOf AS '451 <= MLT <= 500', j.countOf AS '501 <= MLT <= 550', k.countOf AS '551 <= MLT <= 600', l.countOf AS '601 <= MLT <= 650', m.countOf AS '651 <= MLT <= 700', n.countOf AS '701 <= MLT <= 750', o.countOf AS '751 <= MLT <= 800', p.countOf AS '801 <= MLT <= 850', q.countOf AS '851 <= MLT <= 900', r.countOf AS '901 <= MLT <= 950', s.countOf AS '951 <= MLT <= 1000'
FROM posts p
INNER JOIN (
  SELECT 3 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 51 AND 100
    AND
    p.score BETWEEN 21 AND 30
  ) AS a ON a.tmpid = 3
INNER JOIN (
  SELECT 3 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 101 AND 150
    AND
    p.score BETWEEN 21 AND 30
  ) AS b ON b.tmpid = 3
INNER JOIN (
  SELECT 3 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 151 AND 200
    AND
    p.score BETWEEN 21 AND 30
  ) AS c ON c.tmpid = 3
INNER JOIN (
  SELECT 3 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 201 AND 250
    AND
    p.score BETWEEN 21 AND 30
  ) AS d ON d.tmpid = 3
INNER JOIN (
  SELECT 3 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 251 AND 300
    AND
    p.score BETWEEN 21 AND 30
  ) AS e ON e.tmpid = 3
INNER JOIN (
  SELECT 3 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 301 AND 350
    AND
    p.score BETWEEN 21 AND 30
  ) AS f ON f.tmpid = 3
INNER JOIN (
  SELECT 3 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 351 AND 400
    AND
    p.score BETWEEN 21 AND 30
  ) AS g ON g.tmpid = 3
INNER JOIN (
  SELECT 3 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 401 AND 450
    AND
    p.score BETWEEN 21 AND 30
  ) AS h ON h.tmpid = 3
INNER JOIN (
  SELECT 3 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 451 AND 500
    AND
    p.score BETWEEN 21 AND 30
  ) AS i ON i.tmpid = 3
INNER JOIN (
  SELECT 3 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 501 AND 550
    AND
    p.score BETWEEN 21 AND 30
  ) AS j ON j.tmpid = 3
INNER JOIN (
  SELECT 3 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 551 AND 600
    AND
    p.score BETWEEN 21 AND 30
  ) AS k ON k.tmpid = 3
INNER JOIN (
  SELECT 3 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 601 AND 650
    AND
    p.score BETWEEN 21 AND 30
  ) AS l ON l.tmpid = 3
INNER JOIN (
  SELECT 3 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 651 AND 700
    AND
    p.score BETWEEN 21 AND 30
  ) AS m ON m.tmpid = 3
INNER JOIN (
  SELECT 3 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 701 AND 750
    AND
    p.score BETWEEN 21 AND 30
  ) AS n ON n.tmpid = 3
INNER JOIN (
  SELECT 3 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 751 AND 800
    AND
    p.score BETWEEN 21 AND 30
  ) AS o ON o.tmpid = 3
INNER JOIN (
  SELECT 3 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 801 AND 850
    AND
    p.score BETWEEN 21 AND 30
  ) AS p ON p.tmpid = 3
INNER JOIN (
  SELECT 3 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 851 AND 900
    AND
    p.score BETWEEN 21 AND 30
  ) AS q ON q.tmpid = 3
INNER JOIN (
  SELECT 3 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 901 AND 950
    AND
    p.score BETWEEN 21 AND 30
  ) AS r ON r.tmpid = 3
INNER JOIN (
  SELECT 3 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 951 AND 1000
    AND
    p.score BETWEEN 21 AND 30
  ) AS s ON s.tmpid = 3
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 1 and 50
  AND
  p.score BETWEEN 21 AND 30
UNION
SELECT 4 AS id, COUNT(*) AS '1 <= MLT <= 50', a.countOf AS '51 <= MLT <= 100', b.countOf AS '101 <= MLT <= 150', c.countOf AS '151 <= MLT <= 200', d.countOf AS '201 <= MLT <= 250', e.countOf AS '251 <= MLT <= 300', f.countOf AS '301 <= MLT <= 350', g.countOf AS '351 <= MLT <= 400', h.countOf AS '401 <= MLT <= 450', i.countOf AS '451 <= MLT <= 500', j.countOf AS '501 <= MLT <= 550', k.countOf AS '551 <= MLT <= 600', l.countOf AS '601 <= MLT <= 650', m.countOf AS '651 <= MLT <= 700', n.countOf AS '701 <= MLT <= 750', o.countOf AS '751 <= MLT <= 800', p.countOf AS '801 <= MLT <= 850', q.countOf AS '851 <= MLT <= 900', r.countOf AS '901 <= MLT <= 950', s.countOf AS '951 <= MLT <= 1000'
FROM posts p
INNER JOIN (
  SELECT 4 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 51 AND 100
    AND
    p.score BETWEEN 31 AND 40
  ) AS a ON a.tmpid = 4
INNER JOIN (
  SELECT 4 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 101 AND 150
    AND
    p.score BETWEEN 31 AND 40
  ) AS b ON b.tmpid = 4
INNER JOIN (
  SELECT 4 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 151 AND 200
    AND
    p.score BETWEEN 31 AND 40
  ) AS c ON c.tmpid = 4
INNER JOIN (
  SELECT 4 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 201 AND 250
    AND
    p.score BETWEEN 31 AND 40
  ) AS d ON d.tmpid = 4
INNER JOIN (
  SELECT 4 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 251 AND 300
    AND
    p.score BETWEEN 31 AND 40
  ) AS e ON e.tmpid = 4
INNER JOIN (
  SELECT 4 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 301 AND 350
    AND
    p.score BETWEEN 31 AND 40
  ) AS f ON f.tmpid = 4
INNER JOIN (
  SELECT 4 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 351 AND 400
    AND
    p.score BETWEEN 31 AND 40
  ) AS g ON g.tmpid = 4
INNER JOIN (
  SELECT 4 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 401 AND 450
    AND
    p.score BETWEEN 31 AND 40
  ) AS h ON h.tmpid = 4
INNER JOIN (
  SELECT 4 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 451 AND 500
    AND
    p.score BETWEEN 31 AND 40
  ) AS i ON i.tmpid = 4
INNER JOIN (
  SELECT 4 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 501 AND 550
    AND
    p.score BETWEEN 31 AND 40
  ) AS j ON j.tmpid = 4
INNER JOIN (
  SELECT 4 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 551 AND 600
    AND
    p.score BETWEEN 31 AND 40
  ) AS k ON k.tmpid = 4
INNER JOIN (
  SELECT 4 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 601 AND 650
    AND
    p.score BETWEEN 31 AND 40
  ) AS l ON l.tmpid = 4
INNER JOIN (
  SELECT 4 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 651 AND 700
    AND
    p.score BETWEEN 31 AND 40
  ) AS m ON m.tmpid = 4
INNER JOIN (
  SELECT 4 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 701 AND 750
    AND
    p.score BETWEEN 31 AND 40
  ) AS n ON n.tmpid = 4
INNER JOIN (
  SELECT 4 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 751 AND 800
    AND
    p.score BETWEEN 31 AND 40
  ) AS o ON o.tmpid = 4
INNER JOIN (
  SELECT 4 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 801 AND 850
    AND
    p.score BETWEEN 31 AND 40
  ) AS p ON p.tmpid = 4
INNER JOIN (
  SELECT 4 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 851 AND 900
    AND
    p.score BETWEEN 31 AND 40
  ) AS q ON q.tmpid = 4
INNER JOIN (
  SELECT 4 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 901 AND 950
    AND
    p.score BETWEEN 31 AND 40
  ) AS r ON r.tmpid = 4
INNER JOIN (
  SELECT 4 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 951 AND 1000
    AND
    p.score BETWEEN 31 AND 40
  ) AS s ON s.tmpid = 4
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 1 and 50
  AND
  p.score BETWEEN 31 AND 40
UNION
SELECT 5 AS id, COUNT(*) AS '1 <= MLT <= 50', a.countOf AS '51 <= MLT <= 100', b.countOf AS '101 <= MLT <= 150', c.countOf AS '151 <= MLT <= 200', d.countOf AS '201 <= MLT <= 250', e.countOf AS '251 <= MLT <= 300', f.countOf AS '301 <= MLT <= 350', g.countOf AS '351 <= MLT <= 400', h.countOf AS '401 <= MLT <= 450', i.countOf AS '451 <= MLT <= 500', j.countOf AS '501 <= MLT <= 550', k.countOf AS '551 <= MLT <= 600', l.countOf AS '601 <= MLT <= 650', m.countOf AS '651 <= MLT <= 700', n.countOf AS '701 <= MLT <= 750', o.countOf AS '751 <= MLT <= 800', p.countOf AS '801 <= MLT <= 850', q.countOf AS '851 <= MLT <= 900', r.countOf AS '901 <= MLT <= 950', s.countOf AS '951 <= MLT <= 1000'
FROM posts p
INNER JOIN (
  SELECT 5 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 51 AND 100
    AND
    p.score BETWEEN 41 AND 50
  ) AS a ON a.tmpid = 5
INNER JOIN (
  SELECT 5 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 101 AND 150
    AND
    p.score BETWEEN 41 AND 50
  ) AS b ON b.tmpid = 5
INNER JOIN (
  SELECT 5 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 151 AND 200
    AND
    p.score BETWEEN 41 AND 50
  ) AS c ON c.tmpid = 5
INNER JOIN (
  SELECT 5 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 201 AND 250
    AND
    p.score BETWEEN 41 AND 50
  ) AS d ON d.tmpid = 5
INNER JOIN (
  SELECT 5 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 251 AND 300
    AND
    p.score BETWEEN 41 AND 50
  ) AS e ON e.tmpid = 5
INNER JOIN (
  SELECT 5 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 301 AND 350
    AND
    p.score BETWEEN 41 AND 50
  ) AS f ON f.tmpid = 5
INNER JOIN (
  SELECT 5 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 351 AND 400
    AND
    p.score BETWEEN 41 AND 50
  ) AS g ON g.tmpid = 5
INNER JOIN (
  SELECT 5 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 401 AND 450
    AND
    p.score BETWEEN 41 AND 50
  ) AS h ON h.tmpid = 5
INNER JOIN (
  SELECT 5 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 451 AND 500
    AND
    p.score BETWEEN 41 AND 50
  ) AS i ON i.tmpid = 5
INNER JOIN (
  SELECT 5 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 501 AND 550
    AND
    p.score BETWEEN 41 AND 50
  ) AS j ON j.tmpid = 5
INNER JOIN (
  SELECT 5 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 551 AND 600
    AND
    p.score BETWEEN 41 AND 50
  ) AS k ON k.tmpid = 5
INNER JOIN (
  SELECT 5 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 601 AND 650
    AND
    p.score BETWEEN 41 AND 50
  ) AS l ON l.tmpid = 5
INNER JOIN (
  SELECT 5 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 651 AND 700
    AND
    p.score BETWEEN 41 AND 50
  ) AS m ON m.tmpid = 5
INNER JOIN (
  SELECT 5 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 701 AND 750
    AND
    p.score BETWEEN 41 AND 50
  ) AS n ON n.tmpid = 5
INNER JOIN (
  SELECT 5 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 751 AND 800
    AND
    p.score BETWEEN 41 AND 50
  ) AS o ON o.tmpid = 5
INNER JOIN (
  SELECT 5 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 801 AND 850
    AND
    p.score BETWEEN 41 AND 50
  ) AS p ON p.tmpid = 5
INNER JOIN (
  SELECT 5 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 851 AND 900
    AND
    p.score BETWEEN 41 AND 50
  ) AS q ON q.tmpid = 5
INNER JOIN (
  SELECT 5 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 901 AND 950
    AND
    p.score BETWEEN 41 AND 50
  ) AS r ON r.tmpid = 5
INNER JOIN (
  SELECT 5 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 951 AND 1000
    AND
    p.score BETWEEN 41 AND 50
  ) AS s ON s.tmpid = 5
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 1 and 50
  AND
  p.score BETWEEN 41 AND 50
UNION
SELECT 6 AS id, COUNT(*) AS '1 <= MLT <= 50', a.countOf AS '51 <= MLT <= 100', b.countOf AS '101 <= MLT <= 150', c.countOf AS '151 <= MLT <= 200', d.countOf AS '201 <= MLT <= 250', e.countOf AS '251 <= MLT <= 300', f.countOf AS '301 <= MLT <= 350', g.countOf AS '351 <= MLT <= 400', h.countOf AS '401 <= MLT <= 450', i.countOf AS '451 <= MLT <= 500', j.countOf AS '501 <= MLT <= 550', k.countOf AS '551 <= MLT <= 600', l.countOf AS '601 <= MLT <= 650', m.countOf AS '651 <= MLT <= 700', n.countOf AS '701 <= MLT <= 750', o.countOf AS '751 <= MLT <= 800', p.countOf AS '801 <= MLT <= 850', q.countOf AS '851 <= MLT <= 900', r.countOf AS '901 <= MLT <= 950', s.countOf AS '951 <= MLT <= 1000'
FROM posts p
INNER JOIN (
  SELECT 6 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 51 AND 100
    AND
    p.score BETWEEN 51 AND 60
  ) AS a ON a.tmpid = 6
INNER JOIN (
  SELECT 6 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 101 AND 150
    AND
    p.score BETWEEN 51 AND 60
  ) AS b ON b.tmpid = 6
INNER JOIN (
  SELECT 6 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 151 AND 200
    AND
    p.score BETWEEN 51 AND 60
  ) AS c ON c.tmpid = 6
INNER JOIN (
  SELECT 6 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 201 AND 250
    AND
    p.score BETWEEN 51 AND 60
  ) AS d ON d.tmpid = 6
INNER JOIN (
  SELECT 6 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 251 AND 300
    AND
    p.score BETWEEN 51 AND 60
  ) AS e ON e.tmpid = 6
INNER JOIN (
  SELECT 6 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 301 AND 350
    AND
    p.score BETWEEN 51 AND 60
  ) AS f ON f.tmpid = 6
INNER JOIN (
  SELECT 6 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 351 AND 400
    AND
    p.score BETWEEN 51 AND 60
  ) AS g ON g.tmpid = 6
INNER JOIN (
  SELECT 6 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 401 AND 450
    AND
    p.score BETWEEN 51 AND 60
  ) AS h ON h.tmpid = 6
INNER JOIN (
  SELECT 6 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 451 AND 500
    AND
    p.score BETWEEN 51 AND 60
  ) AS i ON i.tmpid = 6
INNER JOIN (
  SELECT 6 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 501 AND 550
    AND
    p.score BETWEEN 51 AND 60
  ) AS j ON j.tmpid = 6
INNER JOIN (
  SELECT 6 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 551 AND 600
    AND
    p.score BETWEEN 51 AND 60
  ) AS k ON k.tmpid = 6
INNER JOIN (
  SELECT 6 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 601 AND 650
    AND
    p.score BETWEEN 51 AND 60
  ) AS l ON l.tmpid = 6
INNER JOIN (
  SELECT 6 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 651 AND 700
    AND
    p.score BETWEEN 51 AND 60
  ) AS m ON m.tmpid = 6
INNER JOIN (
  SELECT 6 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 701 AND 750
    AND
    p.score BETWEEN 51 AND 60
  ) AS n ON n.tmpid = 6
INNER JOIN (
  SELECT 6 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 751 AND 800
    AND
    p.score BETWEEN 51 AND 60
  ) AS o ON o.tmpid = 6
INNER JOIN (
  SELECT 6 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 801 AND 850
    AND
    p.score BETWEEN 51 AND 60
  ) AS p ON p.tmpid = 6
INNER JOIN (
  SELECT 6 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 851 AND 900
    AND
    p.score BETWEEN 51 AND 60
  ) AS q ON q.tmpid = 6
INNER JOIN (
  SELECT 6 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 901 AND 950
    AND
    p.score BETWEEN 51 AND 60
  ) AS r ON r.tmpid = 6
INNER JOIN (
  SELECT 6 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 951 AND 1000
    AND
    p.score BETWEEN 51 AND 60
  ) AS s ON s.tmpid = 6
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 1 and 50
  AND
  p.score BETWEEN 51 AND 60
UNION
SELECT 7 AS id, COUNT(*) AS '1 <= MLT <= 50', a.countOf AS '51 <= MLT <= 100', b.countOf AS '101 <= MLT <= 150', c.countOf AS '151 <= MLT <= 200', d.countOf AS '201 <= MLT <= 250', e.countOf AS '251 <= MLT <= 300', f.countOf AS '301 <= MLT <= 350', g.countOf AS '351 <= MLT <= 400', h.countOf AS '401 <= MLT <= 450', i.countOf AS '451 <= MLT <= 500', j.countOf AS '501 <= MLT <= 550', k.countOf AS '551 <= MLT <= 600', l.countOf AS '601 <= MLT <= 650', m.countOf AS '651 <= MLT <= 700', n.countOf AS '701 <= MLT <= 750', o.countOf AS '751 <= MLT <= 800', p.countOf AS '801 <= MLT <= 850', q.countOf AS '851 <= MLT <= 900', r.countOf AS '901 <= MLT <= 950', s.countOf AS '951 <= MLT <= 1000'
FROM posts p
INNER JOIN (
  SELECT 7 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 51 AND 100
    AND
    p.score BETWEEN 61 AND 70
  ) AS a ON a.tmpid = 7
INNER JOIN (
  SELECT 7 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 101 AND 150
    AND
    p.score BETWEEN 61 AND 70
  ) AS b ON b.tmpid = 7
INNER JOIN (
  SELECT 7 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 151 AND 200
    AND
    p.score BETWEEN 61 AND 70
  ) AS c ON c.tmpid = 7
INNER JOIN (
  SELECT 7 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 201 AND 250
    AND
    p.score BETWEEN 61 AND 70
  ) AS d ON d.tmpid = 7
INNER JOIN (
  SELECT 7 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 251 AND 300
    AND
    p.score BETWEEN 61 AND 70
  ) AS e ON e.tmpid = 7
INNER JOIN (
  SELECT 7 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 301 AND 350
    AND
    p.score BETWEEN 61 AND 70
  ) AS f ON f.tmpid = 7
INNER JOIN (
  SELECT 7 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 351 AND 400
    AND
    p.score BETWEEN 61 AND 70
  ) AS g ON g.tmpid = 7
INNER JOIN (
  SELECT 7 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 401 AND 450
    AND
    p.score BETWEEN 61 AND 70
  ) AS h ON h.tmpid = 7
INNER JOIN (
  SELECT 7 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 451 AND 500
    AND
    p.score BETWEEN 61 AND 70
  ) AS i ON i.tmpid = 7
INNER JOIN (
  SELECT 7 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 501 AND 550
    AND
    p.score BETWEEN 61 AND 70
  ) AS j ON j.tmpid = 7
INNER JOIN (
  SELECT 7 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 551 AND 600
    AND
    p.score BETWEEN 61 AND 70
  ) AS k ON k.tmpid = 7
INNER JOIN (
  SELECT 7 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 601 AND 650
    AND
    p.score BETWEEN 61 AND 70
  ) AS l ON l.tmpid = 7
INNER JOIN (
  SELECT 7 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 651 AND 700
    AND
    p.score BETWEEN 61 AND 70
  ) AS m ON m.tmpid = 7
INNER JOIN (
  SELECT 7 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 701 AND 750
    AND
    p.score BETWEEN 61 AND 70
  ) AS n ON n.tmpid = 7
INNER JOIN (
  SELECT 7 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 751 AND 800
    AND
    p.score BETWEEN 61 AND 70
  ) AS o ON o.tmpid = 7
INNER JOIN (
  SELECT 7 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 801 AND 850
    AND
    p.score BETWEEN 61 AND 70
  ) AS p ON p.tmpid = 7
INNER JOIN (
  SELECT 7 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 851 AND 900
    AND
    p.score BETWEEN 61 AND 70
  ) AS q ON q.tmpid = 7
INNER JOIN (
  SELECT 7 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 901 AND 950
    AND
    p.score BETWEEN 61 AND 70
  ) AS r ON r.tmpid = 7
INNER JOIN (
  SELECT 7 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 951 AND 1000
    AND
    p.score BETWEEN 61 AND 70
  ) AS s ON s.tmpid = 7
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 1 and 50
  AND
  p.score BETWEEN 61 AND 70
UNION
SELECT 8 AS id, COUNT(*) AS '1 <= MLT <= 50', a.countOf AS '51 <= MLT <= 100', b.countOf AS '101 <= MLT <= 150', c.countOf AS '151 <= MLT <= 200', d.countOf AS '201 <= MLT <= 250', e.countOf AS '251 <= MLT <= 300', f.countOf AS '301 <= MLT <= 350', g.countOf AS '351 <= MLT <= 400', h.countOf AS '401 <= MLT <= 450', i.countOf AS '451 <= MLT <= 500', j.countOf AS '501 <= MLT <= 550', k.countOf AS '551 <= MLT <= 600', l.countOf AS '601 <= MLT <= 650', m.countOf AS '651 <= MLT <= 700', n.countOf AS '701 <= MLT <= 750', o.countOf AS '751 <= MLT <= 800', p.countOf AS '801 <= MLT <= 850', q.countOf AS '851 <= MLT <= 900', r.countOf AS '901 <= MLT <= 950', s.countOf AS '951 <= MLT <= 1000'
FROM posts p
INNER JOIN (
  SELECT 8 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 51 AND 100
    AND
    p.score BETWEEN 71 AND 80
  ) AS a ON a.tmpid = 8
INNER JOIN (
  SELECT 8 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 101 AND 150
    AND
    p.score BETWEEN 71 AND 80
  ) AS b ON b.tmpid = 8
INNER JOIN (
  SELECT 8 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 151 AND 200
    AND
    p.score BETWEEN 71 AND 80
  ) AS c ON c.tmpid = 8
INNER JOIN (
  SELECT 8 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 201 AND 250
    AND
    p.score BETWEEN 71 AND 80
  ) AS d ON d.tmpid = 8
INNER JOIN (
  SELECT 8 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 251 AND 300
    AND
    p.score BETWEEN 71 AND 80
  ) AS e ON e.tmpid = 8
INNER JOIN (
  SELECT 8 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 301 AND 350
    AND
    p.score BETWEEN 71 AND 80
  ) AS f ON f.tmpid = 8
INNER JOIN (
  SELECT 8 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 351 AND 400
    AND
    p.score BETWEEN 71 AND 80
  ) AS g ON g.tmpid = 8
INNER JOIN (
  SELECT 8 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 401 AND 450
    AND
    p.score BETWEEN 71 AND 80
  ) AS h ON h.tmpid = 8
INNER JOIN (
  SELECT 8 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 451 AND 500
    AND
    p.score BETWEEN 71 AND 80
  ) AS i ON i.tmpid = 8
INNER JOIN (
  SELECT 8 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 501 AND 550
    AND
    p.score BETWEEN 71 AND 80
  ) AS j ON j.tmpid = 8
INNER JOIN (
  SELECT 8 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 551 AND 600
    AND
    p.score BETWEEN 71 AND 80
  ) AS k ON k.tmpid = 8
INNER JOIN (
  SELECT 8 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 601 AND 650
    AND
    p.score BETWEEN 71 AND 80
  ) AS l ON l.tmpid = 8
INNER JOIN (
  SELECT 8 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 651 AND 700
    AND
    p.score BETWEEN 71 AND 80
  ) AS m ON m.tmpid = 8
INNER JOIN (
  SELECT 8 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 701 AND 750
    AND
    p.score BETWEEN 71 AND 80
  ) AS n ON n.tmpid = 8
INNER JOIN (
  SELECT 8 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 751 AND 800
    AND
    p.score BETWEEN 71 AND 80
  ) AS o ON o.tmpid = 8
INNER JOIN (
  SELECT 8 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 801 AND 850
    AND
    p.score BETWEEN 71 AND 80
  ) AS p ON p.tmpid = 8
INNER JOIN (
  SELECT 8 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 851 AND 900
    AND
    p.score BETWEEN 71 AND 80
  ) AS q ON q.tmpid = 8
INNER JOIN (
  SELECT 8 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 901 AND 950
    AND
    p.score BETWEEN 71 AND 80
  ) AS r ON r.tmpid = 8
INNER JOIN (
  SELECT 8 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 951 AND 1000
    AND
    p.score BETWEEN 71 AND 80
  ) AS s ON s.tmpid = 8
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 1 and 50
  AND
  p.score BETWEEN 71 AND 80
UNION
SELECT 9 AS id, COUNT(*) AS '1 <= MLT <= 50', a.countOf AS '51 <= MLT <= 100', b.countOf AS '101 <= MLT <= 150', c.countOf AS '151 <= MLT <= 200', d.countOf AS '201 <= MLT <= 250', e.countOf AS '251 <= MLT <= 300', f.countOf AS '301 <= MLT <= 350', g.countOf AS '351 <= MLT <= 400', h.countOf AS '401 <= MLT <= 450', i.countOf AS '451 <= MLT <= 500', j.countOf AS '501 <= MLT <= 550', k.countOf AS '551 <= MLT <= 600', l.countOf AS '601 <= MLT <= 650', m.countOf AS '651 <= MLT <= 700', n.countOf AS '701 <= MLT <= 750', o.countOf AS '751 <= MLT <= 800', p.countOf AS '801 <= MLT <= 850', q.countOf AS '851 <= MLT <= 900', r.countOf AS '901 <= MLT <= 950', s.countOf AS '951 <= MLT <= 1000'
FROM posts p
INNER JOIN (
  SELECT 9 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 51 AND 100
    AND
    p.score BETWEEN 81 AND 90
  ) AS a ON a.tmpid = 9
INNER JOIN (
  SELECT 9 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 101 AND 150
    AND
    p.score BETWEEN 81 AND 90
  ) AS b ON b.tmpid = 9
INNER JOIN (
  SELECT 9 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 151 AND 200
    AND
    p.score BETWEEN 81 AND 90
  ) AS c ON c.tmpid = 9
INNER JOIN (
  SELECT 9 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 201 AND 250
    AND
    p.score BETWEEN 81 AND 90
  ) AS d ON d.tmpid = 9
INNER JOIN (
  SELECT 9 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 251 AND 300
    AND
    p.score BETWEEN 81 AND 90
  ) AS e ON e.tmpid = 9
INNER JOIN (
  SELECT 9 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 301 AND 350
    AND
    p.score BETWEEN 81 AND 90
  ) AS f ON f.tmpid = 9
INNER JOIN (
  SELECT 9 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 351 AND 400
    AND
    p.score BETWEEN 81 AND 90
  ) AS g ON g.tmpid = 9
INNER JOIN (
  SELECT 9 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 401 AND 450
    AND
    p.score BETWEEN 81 AND 90
  ) AS h ON h.tmpid = 9
INNER JOIN (
  SELECT 9 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 451 AND 500
    AND
    p.score BETWEEN 81 AND 90
  ) AS i ON i.tmpid = 9
INNER JOIN (
  SELECT 9 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 501 AND 550
    AND
    p.score BETWEEN 81 AND 90
  ) AS j ON j.tmpid = 9
INNER JOIN (
  SELECT 9 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 551 AND 600
    AND
    p.score BETWEEN 81 AND 90
  ) AS k ON k.tmpid = 9
INNER JOIN (
  SELECT 9 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 601 AND 650
    AND
    p.score BETWEEN 81 AND 90
  ) AS l ON l.tmpid = 9
INNER JOIN (
  SELECT 9 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 651 AND 700
    AND
    p.score BETWEEN 81 AND 90
  ) AS m ON m.tmpid = 9
INNER JOIN (
  SELECT 9 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 701 AND 750
    AND
    p.score BETWEEN 81 AND 90
  ) AS n ON n.tmpid = 9
INNER JOIN (
  SELECT 9 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 751 AND 800
    AND
    p.score BETWEEN 81 AND 90
  ) AS o ON o.tmpid = 9
INNER JOIN (
  SELECT 9 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 801 AND 850
    AND
    p.score BETWEEN 81 AND 90
  ) AS p ON p.tmpid = 9
INNER JOIN (
  SELECT 9 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 851 AND 900
    AND
    p.score BETWEEN 81 AND 90
  ) AS q ON q.tmpid = 9
INNER JOIN (
  SELECT 9 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 901 AND 950
    AND
    p.score BETWEEN 81 AND 90
  ) AS r ON r.tmpid = 9
INNER JOIN (
  SELECT 9 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 951 AND 1000
    AND
    p.score BETWEEN 81 AND 90
  ) AS s ON s.tmpid = 9
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 1 and 50
  AND
  p.score BETWEEN 81 AND 90
UNION
SELECT 10 AS id, COUNT(*) AS '1 <= MLT <= 50', a.countOf AS '51 <= MLT <= 100', b.countOf AS '101 <= MLT <= 150', c.countOf AS '151 <= MLT <= 200', d.countOf AS '201 <= MLT <= 250', e.countOf AS '251 <= MLT <= 300', f.countOf AS '301 <= MLT <= 350', g.countOf AS '351 <= MLT <= 400', h.countOf AS '401 <= MLT <= 450', i.countOf AS '451 <= MLT <= 500', j.countOf AS '501 <= MLT <= 550', k.countOf AS '551 <= MLT <= 600', l.countOf AS '601 <= MLT <= 650', m.countOf AS '651 <= MLT <= 700', n.countOf AS '701 <= MLT <= 750', o.countOf AS '751 <= MLT <= 800', p.countOf AS '801 <= MLT <= 850', q.countOf AS '851 <= MLT <= 900', r.countOf AS '901 <= MLT <= 950', s.countOf AS '951 <= MLT <= 1000'
FROM posts p
INNER JOIN (
  SELECT 10 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 51 AND 100
    AND
    p.score BETWEEN 91 AND 100
  ) AS a ON a.tmpid = 10
INNER JOIN (
  SELECT 10 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 101 AND 150
    AND
    p.score BETWEEN 91 AND 100
  ) AS b ON b.tmpid = 10
INNER JOIN (
  SELECT 10 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 151 AND 200
    AND
    p.score BETWEEN 91 AND 100
  ) AS c ON c.tmpid = 10
INNER JOIN (
  SELECT 10 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 201 AND 250
    AND
    p.score BETWEEN 91 AND 100
  ) AS d ON d.tmpid = 10
INNER JOIN (
  SELECT 10 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 251 AND 300
    AND
    p.score BETWEEN 91 AND 100
  ) AS e ON e.tmpid = 10
INNER JOIN (
  SELECT 10 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 301 AND 350
    AND
    p.score BETWEEN 91 AND 100
  ) AS f ON f.tmpid = 10
INNER JOIN (
  SELECT 10 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 351 AND 400
    AND
    p.score BETWEEN 91 AND 100
  ) AS g ON g.tmpid = 10
INNER JOIN (
  SELECT 10 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 401 AND 450
    AND
    p.score BETWEEN 91 AND 100
  ) AS h ON h.tmpid = 10
INNER JOIN (
  SELECT 10 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 451 AND 500
    AND
    p.score BETWEEN 91 AND 100
  ) AS i ON i.tmpid = 10
INNER JOIN (
  SELECT 10 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 501 AND 550
    AND
    p.score BETWEEN 91 AND 100
  ) AS j ON j.tmpid = 10
INNER JOIN (
  SELECT 10 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 551 AND 600
    AND
    p.score BETWEEN 91 AND 100
  ) AS k ON k.tmpid = 10
INNER JOIN (
  SELECT 10 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 601 AND 650
    AND
    p.score BETWEEN 91 AND 100
  ) AS l ON l.tmpid = 10
INNER JOIN (
  SELECT 10 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 651 AND 700
    AND
    p.score BETWEEN 91 AND 100
  ) AS m ON m.tmpid = 10
INNER JOIN (
  SELECT 10 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 701 AND 750
    AND
    p.score BETWEEN 91 AND 100
  ) AS n ON n.tmpid = 10
INNER JOIN (
  SELECT 10 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 751 AND 800
    AND
    p.score BETWEEN 91 AND 100
  ) AS o ON o.tmpid = 10
INNER JOIN (
  SELECT 10 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 801 AND 850
    AND
    p.score BETWEEN 91 AND 100
  ) AS p ON p.tmpid = 10
INNER JOIN (
  SELECT 10 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 851 AND 900
    AND
    p.score BETWEEN 91 AND 100
  ) AS q ON q.tmpid = 10
INNER JOIN (
  SELECT 10 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 901 AND 950
    AND
    p.score BETWEEN 91 AND 100
  ) AS r ON r.tmpid = 10
INNER JOIN (
  SELECT 10 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 951 AND 1000
    AND
    p.score BETWEEN 91 AND 100
  ) AS s ON s.tmpid = 10
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 1 and 50
  AND
  p.score BETWEEN 91 AND 100
UNION
SELECT 11 AS id, COUNT(*) AS '1 <= MLT <= 50', a.countOf AS '51 <= MLT <= 100', b.countOf AS '101 <= MLT <= 150', c.countOf AS '151 <= MLT <= 200', d.countOf AS '201 <= MLT <= 250', e.countOf AS '251 <= MLT <= 300', f.countOf AS '301 <= MLT <= 350', g.countOf AS '351 <= MLT <= 400', h.countOf AS '401 <= MLT <= 450', i.countOf AS '451 <= MLT <= 500', j.countOf AS '501 <= MLT <= 550', k.countOf AS '551 <= MLT <= 600', l.countOf AS '601 <= MLT <= 650', m.countOf AS '651 <= MLT <= 700', n.countOf AS '701 <= MLT <= 750', o.countOf AS '751 <= MLT <= 800', p.countOf AS '801 <= MLT <= 850', q.countOf AS '851 <= MLT <= 900', r.countOf AS '901 <= MLT <= 950', s.countOf AS '951 <= MLT <= 1000'
FROM posts p
INNER JOIN (
  SELECT 11 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 51 AND 100
    AND
    p.score BETWEEN 101 AND 110
  ) AS a ON a.tmpid = 11
INNER JOIN (
  SELECT 11 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 101 AND 150
    AND
    p.score BETWEEN 101 AND 110
  ) AS b ON b.tmpid = 11
INNER JOIN (
  SELECT 11 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 151 AND 200
    AND
    p.score BETWEEN 101 AND 110
  ) AS c ON c.tmpid = 11
INNER JOIN (
  SELECT 11 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 201 AND 250
    AND
    p.score BETWEEN 101 AND 110
  ) AS d ON d.tmpid = 11
INNER JOIN (
  SELECT 11 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 251 AND 300
    AND
    p.score BETWEEN 101 AND 110
  ) AS e ON e.tmpid = 11
INNER JOIN (
  SELECT 11 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 301 AND 350
    AND
    p.score BETWEEN 101 AND 110
  ) AS f ON f.tmpid = 11
INNER JOIN (
  SELECT 11 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 351 AND 400
    AND
    p.score BETWEEN 101 AND 110
  ) AS g ON g.tmpid = 11
INNER JOIN (
  SELECT 11 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 401 AND 450
    AND
    p.score BETWEEN 101 AND 110
  ) AS h ON h.tmpid = 11
INNER JOIN (
  SELECT 11 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 451 AND 500
    AND
    p.score BETWEEN 101 AND 110
  ) AS i ON i.tmpid = 11
INNER JOIN (
  SELECT 11 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 501 AND 550
    AND
    p.score BETWEEN 101 AND 110
  ) AS j ON j.tmpid = 11
INNER JOIN (
  SELECT 11 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 551 AND 600
    AND
    p.score BETWEEN 101 AND 110
  ) AS k ON k.tmpid = 11
INNER JOIN (
  SELECT 11 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 601 AND 650
    AND
    p.score BETWEEN 101 AND 110
  ) AS l ON l.tmpid = 11
INNER JOIN (
  SELECT 11 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 651 AND 700
    AND
    p.score BETWEEN 101 AND 110
  ) AS m ON m.tmpid = 11
INNER JOIN (
  SELECT 11 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 701 AND 750
    AND
    p.score BETWEEN 101 AND 110
  ) AS n ON n.tmpid = 11
INNER JOIN (
  SELECT 11 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 751 AND 800
    AND
    p.score BETWEEN 101 AND 110
  ) AS o ON o.tmpid = 11
INNER JOIN (
  SELECT 11 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 801 AND 850
    AND
    p.score BETWEEN 101 AND 110
  ) AS p ON p.tmpid = 11
INNER JOIN (
  SELECT 11 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 851 AND 900
    AND
    p.score BETWEEN 101 AND 110
  ) AS q ON q.tmpid = 11
INNER JOIN (
  SELECT 11 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 901 AND 950
    AND
    p.score BETWEEN 101 AND 110
  ) AS r ON r.tmpid = 11
INNER JOIN (
  SELECT 11 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 951 AND 1000
    AND
    p.score BETWEEN 101 AND 110
  ) AS s ON s.tmpid = 11
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 1 and 50
  AND
  p.score BETWEEN 101 AND 110
UNION
SELECT 12 AS id, COUNT(*) AS '1 <= MLT <= 50', a.countOf AS '51 <= MLT <= 100', b.countOf AS '101 <= MLT <= 150', c.countOf AS '151 <= MLT <= 200', d.countOf AS '201 <= MLT <= 250', e.countOf AS '251 <= MLT <= 300', f.countOf AS '301 <= MLT <= 350', g.countOf AS '351 <= MLT <= 400', h.countOf AS '401 <= MLT <= 450', i.countOf AS '451 <= MLT <= 500', j.countOf AS '501 <= MLT <= 550', k.countOf AS '551 <= MLT <= 600', l.countOf AS '601 <= MLT <= 650', m.countOf AS '651 <= MLT <= 700', n.countOf AS '701 <= MLT <= 750', o.countOf AS '751 <= MLT <= 800', p.countOf AS '801 <= MLT <= 850', q.countOf AS '851 <= MLT <= 900', r.countOf AS '901 <= MLT <= 950', s.countOf AS '951 <= MLT <= 1000'
FROM posts p
INNER JOIN (
  SELECT 12 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 51 AND 100
    AND
    p.score BETWEEN 111 AND 120
  ) AS a ON a.tmpid = 12
INNER JOIN (
  SELECT 12 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 101 AND 150
    AND
    p.score BETWEEN 111 AND 120
  ) AS b ON b.tmpid = 12
INNER JOIN (
  SELECT 12 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 151 AND 200
    AND
    p.score BETWEEN 111 AND 120
  ) AS c ON c.tmpid = 12
INNER JOIN (
  SELECT 12 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 201 AND 250
    AND
    p.score BETWEEN 111 AND 120
  ) AS d ON d.tmpid = 12
INNER JOIN (
  SELECT 12 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 251 AND 300
    AND
    p.score BETWEEN 111 AND 120
  ) AS e ON e.tmpid = 12
INNER JOIN (
  SELECT 12 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 301 AND 350
    AND
    p.score BETWEEN 111 AND 120
  ) AS f ON f.tmpid = 12
INNER JOIN (
  SELECT 12 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 351 AND 400
    AND
    p.score BETWEEN 111 AND 120
  ) AS g ON g.tmpid = 12
INNER JOIN (
  SELECT 12 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 401 AND 450
    AND
    p.score BETWEEN 111 AND 120
  ) AS h ON h.tmpid = 12
INNER JOIN (
  SELECT 12 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 451 AND 500
    AND
    p.score BETWEEN 111 AND 120
  ) AS i ON i.tmpid = 12
INNER JOIN (
  SELECT 12 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 501 AND 550
    AND
    p.score BETWEEN 111 AND 120
  ) AS j ON j.tmpid = 12
INNER JOIN (
  SELECT 12 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 551 AND 600
    AND
    p.score BETWEEN 111 AND 120
  ) AS k ON k.tmpid = 12
INNER JOIN (
  SELECT 12 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 601 AND 650
    AND
    p.score BETWEEN 111 AND 120
  ) AS l ON l.tmpid = 12
INNER JOIN (
  SELECT 12 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 651 AND 700
    AND
    p.score BETWEEN 111 AND 120
  ) AS m ON m.tmpid = 12
INNER JOIN (
  SELECT 12 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 701 AND 750
    AND
    p.score BETWEEN 111 AND 120
  ) AS n ON n.tmpid = 12
INNER JOIN (
  SELECT 12 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 751 AND 800
    AND
    p.score BETWEEN 111 AND 120
  ) AS o ON o.tmpid = 12
INNER JOIN (
  SELECT 12 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 801 AND 850
    AND
    p.score BETWEEN 111 AND 120
  ) AS p ON p.tmpid = 12
INNER JOIN (
  SELECT 12 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 851 AND 900
    AND
    p.score BETWEEN 111 AND 120
  ) AS q ON q.tmpid = 12
INNER JOIN (
  SELECT 12 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 901 AND 950
    AND
    p.score BETWEEN 111 AND 120
  ) AS r ON r.tmpid = 12
INNER JOIN (
  SELECT 12 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 951 AND 1000
    AND
    p.score BETWEEN 111 AND 120
  ) AS s ON s.tmpid = 12
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 1 and 50
  AND
  p.score BETWEEN 111 AND 120
UNION
SELECT 13 AS id, COUNT(*) AS '1 <= MLT <= 50', a.countOf AS '51 <= MLT <= 100', b.countOf AS '101 <= MLT <= 150', c.countOf AS '151 <= MLT <= 200', d.countOf AS '201 <= MLT <= 250', e.countOf AS '251 <= MLT <= 300', f.countOf AS '301 <= MLT <= 350', g.countOf AS '351 <= MLT <= 400', h.countOf AS '401 <= MLT <= 450', i.countOf AS '451 <= MLT <= 500', j.countOf AS '501 <= MLT <= 550', k.countOf AS '551 <= MLT <= 600', l.countOf AS '601 <= MLT <= 650', m.countOf AS '651 <= MLT <= 700', n.countOf AS '701 <= MLT <= 750', o.countOf AS '751 <= MLT <= 800', p.countOf AS '801 <= MLT <= 850', q.countOf AS '851 <= MLT <= 900', r.countOf AS '901 <= MLT <= 950', s.countOf AS '951 <= MLT <= 1000'
FROM posts p
INNER JOIN (
  SELECT 13 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 51 AND 100
    AND
    p.score BETWEEN 121 AND 130
  ) AS a ON a.tmpid = 13
INNER JOIN (
  SELECT 13 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 101 AND 150
    AND
    p.score BETWEEN 121 AND 130
  ) AS b ON b.tmpid = 13
INNER JOIN (
  SELECT 13 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 151 AND 200
    AND
    p.score BETWEEN 121 AND 130
  ) AS c ON c.tmpid = 13
INNER JOIN (
  SELECT 13 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 201 AND 250
    AND
    p.score BETWEEN 121 AND 130
  ) AS d ON d.tmpid = 13
INNER JOIN (
  SELECT 13 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 251 AND 300
    AND
    p.score BETWEEN 121 AND 130
  ) AS e ON e.tmpid = 13
INNER JOIN (
  SELECT 13 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 301 AND 350
    AND
    p.score BETWEEN 121 AND 130
  ) AS f ON f.tmpid = 13
INNER JOIN (
  SELECT 13 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 351 AND 400
    AND
    p.score BETWEEN 121 AND 130
  ) AS g ON g.tmpid = 13
INNER JOIN (
  SELECT 13 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 401 AND 450
    AND
    p.score BETWEEN 121 AND 130
  ) AS h ON h.tmpid = 13
INNER JOIN (
  SELECT 13 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 451 AND 500
    AND
    p.score BETWEEN 121 AND 130
  ) AS i ON i.tmpid = 13
INNER JOIN (
  SELECT 13 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 501 AND 550
    AND
    p.score BETWEEN 121 AND 130
  ) AS j ON j.tmpid = 13
INNER JOIN (
  SELECT 13 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 551 AND 600
    AND
    p.score BETWEEN 121 AND 130
  ) AS k ON k.tmpid = 13
INNER JOIN (
  SELECT 13 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 601 AND 650
    AND
    p.score BETWEEN 121 AND 130
  ) AS l ON l.tmpid = 13
INNER JOIN (
  SELECT 13 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 651 AND 700
    AND
    p.score BETWEEN 121 AND 130
  ) AS m ON m.tmpid = 13
INNER JOIN (
  SELECT 13 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 701 AND 750
    AND
    p.score BETWEEN 121 AND 130
  ) AS n ON n.tmpid = 13
INNER JOIN (
  SELECT 13 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 751 AND 800
    AND
    p.score BETWEEN 121 AND 130
  ) AS o ON o.tmpid = 13
INNER JOIN (
  SELECT 13 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 801 AND 850
    AND
    p.score BETWEEN 121 AND 130
  ) AS p ON p.tmpid = 13
INNER JOIN (
  SELECT 13 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 851 AND 900
    AND
    p.score BETWEEN 121 AND 130
  ) AS q ON q.tmpid = 13
INNER JOIN (
  SELECT 13 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 901 AND 950
    AND
    p.score BETWEEN 121 AND 130
  ) AS r ON r.tmpid = 13
INNER JOIN (
  SELECT 13 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 951 AND 1000
    AND
    p.score BETWEEN 121 AND 130
  ) AS s ON s.tmpid = 13
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 1 and 50
  AND
  p.score BETWEEN 121 AND 130
UNION
SELECT 14 AS id, COUNT(*) AS '1 <= MLT <= 50', a.countOf AS '51 <= MLT <= 100', b.countOf AS '101 <= MLT <= 150', c.countOf AS '151 <= MLT <= 200', d.countOf AS '201 <= MLT <= 250', e.countOf AS '251 <= MLT <= 300', f.countOf AS '301 <= MLT <= 350', g.countOf AS '351 <= MLT <= 400', h.countOf AS '401 <= MLT <= 450', i.countOf AS '451 <= MLT <= 500', j.countOf AS '501 <= MLT <= 550', k.countOf AS '551 <= MLT <= 600', l.countOf AS '601 <= MLT <= 650', m.countOf AS '651 <= MLT <= 700', n.countOf AS '701 <= MLT <= 750', o.countOf AS '751 <= MLT <= 800', p.countOf AS '801 <= MLT <= 850', q.countOf AS '851 <= MLT <= 900', r.countOf AS '901 <= MLT <= 950', s.countOf AS '951 <= MLT <= 1000'
FROM posts p
INNER JOIN (
  SELECT 14 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 51 AND 100
    AND
    p.score BETWEEN 131 AND 140
  ) AS a ON a.tmpid = 14
INNER JOIN (
  SELECT 14 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 101 AND 150
    AND
    p.score BETWEEN 131 AND 140
  ) AS b ON b.tmpid = 14
INNER JOIN (
  SELECT 14 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 151 AND 200
    AND
    p.score BETWEEN 131 AND 140
  ) AS c ON c.tmpid = 14
INNER JOIN (
  SELECT 14 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 201 AND 250
    AND
    p.score BETWEEN 131 AND 140
  ) AS d ON d.tmpid = 14
INNER JOIN (
  SELECT 14 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 251 AND 300
    AND
    p.score BETWEEN 131 AND 140
  ) AS e ON e.tmpid = 14
INNER JOIN (
  SELECT 14 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 301 AND 350
    AND
    p.score BETWEEN 131 AND 140
  ) AS f ON f.tmpid = 14
INNER JOIN (
  SELECT 14 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 351 AND 400
    AND
    p.score BETWEEN 131 AND 140
  ) AS g ON g.tmpid = 14
INNER JOIN (
  SELECT 14 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 401 AND 450
    AND
    p.score BETWEEN 131 AND 140
  ) AS h ON h.tmpid = 14
INNER JOIN (
  SELECT 14 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 451 AND 500
    AND
    p.score BETWEEN 131 AND 140
  ) AS i ON i.tmpid = 14
INNER JOIN (
  SELECT 14 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 501 AND 550
    AND
    p.score BETWEEN 131 AND 140
  ) AS j ON j.tmpid = 14
INNER JOIN (
  SELECT 14 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 551 AND 600
    AND
    p.score BETWEEN 131 AND 140
  ) AS k ON k.tmpid = 14
INNER JOIN (
  SELECT 14 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 601 AND 650
    AND
    p.score BETWEEN 131 AND 140
  ) AS l ON l.tmpid = 14
INNER JOIN (
  SELECT 14 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 651 AND 700
    AND
    p.score BETWEEN 131 AND 140
  ) AS m ON m.tmpid = 14
INNER JOIN (
  SELECT 14 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 701 AND 750
    AND
    p.score BETWEEN 131 AND 140
  ) AS n ON n.tmpid = 14
INNER JOIN (
  SELECT 14 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 751 AND 800
    AND
    p.score BETWEEN 131 AND 140
  ) AS o ON o.tmpid = 14
INNER JOIN (
  SELECT 14 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 801 AND 850
    AND
    p.score BETWEEN 131 AND 140
  ) AS p ON p.tmpid = 14
INNER JOIN (
  SELECT 14 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 851 AND 900
    AND
    p.score BETWEEN 131 AND 140
  ) AS q ON q.tmpid = 14
INNER JOIN (
  SELECT 14 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 901 AND 950
    AND
    p.score BETWEEN 131 AND 140
  ) AS r ON r.tmpid = 14
INNER JOIN (
  SELECT 14 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 951 AND 1000
    AND
    p.score BETWEEN 131 AND 140
  ) AS s ON s.tmpid = 14
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 1 and 50
  AND
  p.score BETWEEN 131 AND 140
UNION
SELECT 15 AS id, COUNT(*) AS '1 <= MLT <= 50', a.countOf AS '51 <= MLT <= 100', b.countOf AS '101 <= MLT <= 150', c.countOf AS '151 <= MLT <= 200', d.countOf AS '201 <= MLT <= 250', e.countOf AS '251 <= MLT <= 300', f.countOf AS '301 <= MLT <= 350', g.countOf AS '351 <= MLT <= 400', h.countOf AS '401 <= MLT <= 450', i.countOf AS '451 <= MLT <= 500', j.countOf AS '501 <= MLT <= 550', k.countOf AS '551 <= MLT <= 600', l.countOf AS '601 <= MLT <= 650', m.countOf AS '651 <= MLT <= 700', n.countOf AS '701 <= MLT <= 750', o.countOf AS '751 <= MLT <= 800', p.countOf AS '801 <= MLT <= 850', q.countOf AS '851 <= MLT <= 900', r.countOf AS '901 <= MLT <= 950', s.countOf AS '951 <= MLT <= 1000'
FROM posts p
INNER JOIN (
  SELECT 15 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 51 AND 100
    AND
    p.score BETWEEN 141 AND 150
  ) AS a ON a.tmpid = 15
INNER JOIN (
  SELECT 15 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 101 AND 150
    AND
    p.score BETWEEN 141 AND 150
  ) AS b ON b.tmpid = 15
INNER JOIN (
  SELECT 15 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 151 AND 200
    AND
    p.score BETWEEN 141 AND 150
  ) AS c ON c.tmpid = 15
INNER JOIN (
  SELECT 15 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 201 AND 250
    AND
    p.score BETWEEN 141 AND 150
  ) AS d ON d.tmpid = 15
INNER JOIN (
  SELECT 15 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 251 AND 300
    AND
    p.score BETWEEN 141 AND 150
  ) AS e ON e.tmpid = 15
INNER JOIN (
  SELECT 15 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 301 AND 350
    AND
    p.score BETWEEN 141 AND 150
  ) AS f ON f.tmpid = 15
INNER JOIN (
  SELECT 15 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 351 AND 400
    AND
    p.score BETWEEN 141 AND 150
  ) AS g ON g.tmpid = 15
INNER JOIN (
  SELECT 15 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 401 AND 450
    AND
    p.score BETWEEN 141 AND 150
  ) AS h ON h.tmpid = 15
INNER JOIN (
  SELECT 15 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 451 AND 500
    AND
    p.score BETWEEN 141 AND 150
  ) AS i ON i.tmpid = 15
INNER JOIN (
  SELECT 15 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 501 AND 550
    AND
    p.score BETWEEN 141 AND 150
  ) AS j ON j.tmpid = 15
INNER JOIN (
  SELECT 15 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 551 AND 600
    AND
    p.score BETWEEN 141 AND 150
  ) AS k ON k.tmpid = 15
INNER JOIN (
  SELECT 15 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 601 AND 650
    AND
    p.score BETWEEN 141 AND 150
  ) AS l ON l.tmpid = 15
INNER JOIN (
  SELECT 15 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 651 AND 700
    AND
    p.score BETWEEN 141 AND 150
  ) AS m ON m.tmpid = 15
INNER JOIN (
  SELECT 15 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 701 AND 750
    AND
    p.score BETWEEN 141 AND 150
  ) AS n ON n.tmpid = 15
INNER JOIN (
  SELECT 15 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 751 AND 800
    AND
    p.score BETWEEN 141 AND 150
  ) AS o ON o.tmpid = 15
INNER JOIN (
  SELECT 15 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 801 AND 850
    AND
    p.score BETWEEN 141 AND 150
  ) AS p ON p.tmpid = 15
INNER JOIN (
  SELECT 15 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 851 AND 900
    AND
    p.score BETWEEN 141 AND 150
  ) AS q ON q.tmpid = 15
INNER JOIN (
  SELECT 15 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 901 AND 950
    AND
    p.score BETWEEN 141 AND 150
  ) AS r ON r.tmpid = 15
INNER JOIN (
  SELECT 15 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 951 AND 1000
    AND
    p.score BETWEEN 141 AND 150
  ) AS s ON s.tmpid = 15
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 1 and 50
  AND
  p.score BETWEEN 141 AND 150
UNION
SELECT 16 AS id, COUNT(*) AS '1 <= MLT <= 50', a.countOf AS '51 <= MLT <= 100', b.countOf AS '101 <= MLT <= 150', c.countOf AS '151 <= MLT <= 200', d.countOf AS '201 <= MLT <= 250', e.countOf AS '251 <= MLT <= 300', f.countOf AS '301 <= MLT <= 350', g.countOf AS '351 <= MLT <= 400', h.countOf AS '401 <= MLT <= 450', i.countOf AS '451 <= MLT <= 500', j.countOf AS '501 <= MLT <= 550', k.countOf AS '551 <= MLT <= 600', l.countOf AS '601 <= MLT <= 650', m.countOf AS '651 <= MLT <= 700', n.countOf AS '701 <= MLT <= 750', o.countOf AS '751 <= MLT <= 800', p.countOf AS '801 <= MLT <= 850', q.countOf AS '851 <= MLT <= 900', r.countOf AS '901 <= MLT <= 950', s.countOf AS '951 <= MLT <= 1000'
FROM posts p
INNER JOIN (
  SELECT 16 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 51 AND 100
    AND
    p.score BETWEEN 151 AND 160
  ) AS a ON a.tmpid = 16
INNER JOIN (
  SELECT 16 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 101 AND 150
    AND
    p.score BETWEEN 151 AND 160
  ) AS b ON b.tmpid = 16
INNER JOIN (
  SELECT 16 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 151 AND 200
    AND
    p.score BETWEEN 151 AND 160
  ) AS c ON c.tmpid = 16
INNER JOIN (
  SELECT 16 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 201 AND 250
    AND
    p.score BETWEEN 151 AND 160
  ) AS d ON d.tmpid = 16
INNER JOIN (
  SELECT 16 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 251 AND 300
    AND
    p.score BETWEEN 151 AND 160
  ) AS e ON e.tmpid = 16
INNER JOIN (
  SELECT 16 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 301 AND 350
    AND
    p.score BETWEEN 151 AND 160
  ) AS f ON f.tmpid = 16
INNER JOIN (
  SELECT 16 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 351 AND 400
    AND
    p.score BETWEEN 151 AND 160
  ) AS g ON g.tmpid = 16
INNER JOIN (
  SELECT 16 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 401 AND 450
    AND
    p.score BETWEEN 151 AND 160
  ) AS h ON h.tmpid = 16
INNER JOIN (
  SELECT 16 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 451 AND 500
    AND
    p.score BETWEEN 151 AND 160
  ) AS i ON i.tmpid = 16
INNER JOIN (
  SELECT 16 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 501 AND 550
    AND
    p.score BETWEEN 151 AND 160
  ) AS j ON j.tmpid = 16
INNER JOIN (
  SELECT 16 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 551 AND 600
    AND
    p.score BETWEEN 151 AND 160
  ) AS k ON k.tmpid = 16
INNER JOIN (
  SELECT 16 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 601 AND 650
    AND
    p.score BETWEEN 151 AND 160
  ) AS l ON l.tmpid = 16
INNER JOIN (
  SELECT 16 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 651 AND 700
    AND
    p.score BETWEEN 151 AND 160
  ) AS m ON m.tmpid = 16
INNER JOIN (
  SELECT 16 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 701 AND 750
    AND
    p.score BETWEEN 151 AND 160
  ) AS n ON n.tmpid = 16
INNER JOIN (
  SELECT 16 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 751 AND 800
    AND
    p.score BETWEEN 151 AND 160
  ) AS o ON o.tmpid = 16
INNER JOIN (
  SELECT 16 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 801 AND 850
    AND
    p.score BETWEEN 151 AND 160
  ) AS p ON p.tmpid = 16
INNER JOIN (
  SELECT 16 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 851 AND 900
    AND
    p.score BETWEEN 151 AND 160
  ) AS q ON q.tmpid = 16
INNER JOIN (
  SELECT 16 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 901 AND 950
    AND
    p.score BETWEEN 151 AND 160
  ) AS r ON r.tmpid = 16
INNER JOIN (
  SELECT 16 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 951 AND 1000
    AND
    p.score BETWEEN 151 AND 160
  ) AS s ON s.tmpid = 16
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 1 and 50
  AND
  p.score BETWEEN 151 AND 160
UNION
SELECT 17 AS id, COUNT(*) AS '1 <= MLT <= 50', a.countOf AS '51 <= MLT <= 100', b.countOf AS '101 <= MLT <= 150', c.countOf AS '151 <= MLT <= 200', d.countOf AS '201 <= MLT <= 250', e.countOf AS '251 <= MLT <= 300', f.countOf AS '301 <= MLT <= 350', g.countOf AS '351 <= MLT <= 400', h.countOf AS '401 <= MLT <= 450', i.countOf AS '451 <= MLT <= 500', j.countOf AS '501 <= MLT <= 550', k.countOf AS '551 <= MLT <= 600', l.countOf AS '601 <= MLT <= 650', m.countOf AS '651 <= MLT <= 700', n.countOf AS '701 <= MLT <= 750', o.countOf AS '751 <= MLT <= 800', p.countOf AS '801 <= MLT <= 850', q.countOf AS '851 <= MLT <= 900', r.countOf AS '901 <= MLT <= 950', s.countOf AS '951 <= MLT <= 1000'
FROM posts p
INNER JOIN (
  SELECT 17 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 51 AND 100
    AND
    p.score BETWEEN 161 AND 170
  ) AS a ON a.tmpid = 17
INNER JOIN (
  SELECT 17 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 101 AND 150
    AND
    p.score BETWEEN 161 AND 170
  ) AS b ON b.tmpid = 17
INNER JOIN (
  SELECT 17 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 151 AND 200
    AND
    p.score BETWEEN 161 AND 170
  ) AS c ON c.tmpid = 17
INNER JOIN (
  SELECT 17 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 201 AND 250
    AND
    p.score BETWEEN 161 AND 170
  ) AS d ON d.tmpid = 17
INNER JOIN (
  SELECT 17 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 251 AND 300
    AND
    p.score BETWEEN 161 AND 170
  ) AS e ON e.tmpid = 17
INNER JOIN (
  SELECT 17 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 301 AND 350
    AND
    p.score BETWEEN 161 AND 170
  ) AS f ON f.tmpid = 17
INNER JOIN (
  SELECT 17 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 351 AND 400
    AND
    p.score BETWEEN 161 AND 170
  ) AS g ON g.tmpid = 17
INNER JOIN (
  SELECT 17 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 401 AND 450
    AND
    p.score BETWEEN 161 AND 170
  ) AS h ON h.tmpid = 17
INNER JOIN (
  SELECT 17 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 451 AND 500
    AND
    p.score BETWEEN 161 AND 170
  ) AS i ON i.tmpid = 17
INNER JOIN (
  SELECT 17 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 501 AND 550
    AND
    p.score BETWEEN 161 AND 170
  ) AS j ON j.tmpid = 17
INNER JOIN (
  SELECT 17 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 551 AND 600
    AND
    p.score BETWEEN 161 AND 170
  ) AS k ON k.tmpid = 17
INNER JOIN (
  SELECT 17 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 601 AND 650
    AND
    p.score BETWEEN 161 AND 170
  ) AS l ON l.tmpid = 17
INNER JOIN (
  SELECT 17 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 651 AND 700
    AND
    p.score BETWEEN 161 AND 170
  ) AS m ON m.tmpid = 17
INNER JOIN (
  SELECT 17 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 701 AND 750
    AND
    p.score BETWEEN 161 AND 170
  ) AS n ON n.tmpid = 17
INNER JOIN (
  SELECT 17 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 751 AND 800
    AND
    p.score BETWEEN 161 AND 170
  ) AS o ON o.tmpid = 17
INNER JOIN (
  SELECT 17 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 801 AND 850
    AND
    p.score BETWEEN 161 AND 170
  ) AS p ON p.tmpid = 17
INNER JOIN (
  SELECT 17 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 851 AND 900
    AND
    p.score BETWEEN 161 AND 170
  ) AS q ON q.tmpid = 17
INNER JOIN (
  SELECT 17 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 901 AND 950
    AND
    p.score BETWEEN 161 AND 170
  ) AS r ON r.tmpid = 17
INNER JOIN (
  SELECT 17 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 951 AND 1000
    AND
    p.score BETWEEN 161 AND 170
  ) AS s ON s.tmpid = 17
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 1 and 50
  AND
  p.score BETWEEN 161 AND 170
UNION
SELECT 18 AS id, COUNT(*) AS '1 <= MLT <= 50', a.countOf AS '51 <= MLT <= 100', b.countOf AS '101 <= MLT <= 150', c.countOf AS '151 <= MLT <= 200', d.countOf AS '201 <= MLT <= 250', e.countOf AS '251 <= MLT <= 300', f.countOf AS '301 <= MLT <= 350', g.countOf AS '351 <= MLT <= 400', h.countOf AS '401 <= MLT <= 450', i.countOf AS '451 <= MLT <= 500', j.countOf AS '501 <= MLT <= 550', k.countOf AS '551 <= MLT <= 600', l.countOf AS '601 <= MLT <= 650', m.countOf AS '651 <= MLT <= 700', n.countOf AS '701 <= MLT <= 750', o.countOf AS '751 <= MLT <= 800', p.countOf AS '801 <= MLT <= 850', q.countOf AS '851 <= MLT <= 900', r.countOf AS '901 <= MLT <= 950', s.countOf AS '951 <= MLT <= 1000'
FROM posts p
INNER JOIN (
  SELECT 18 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 51 AND 100
    AND
    p.score BETWEEN 171 AND 180
  ) AS a ON a.tmpid = 18
INNER JOIN (
  SELECT 18 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 101 AND 150
    AND
    p.score BETWEEN 171 AND 180
  ) AS b ON b.tmpid = 18
INNER JOIN (
  SELECT 18 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 151 AND 200
    AND
    p.score BETWEEN 171 AND 180
  ) AS c ON c.tmpid = 18
INNER JOIN (
  SELECT 18 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 201 AND 250
    AND
    p.score BETWEEN 171 AND 180
  ) AS d ON d.tmpid = 18
INNER JOIN (
  SELECT 18 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 251 AND 300
    AND
    p.score BETWEEN 171 AND 180
  ) AS e ON e.tmpid = 18
INNER JOIN (
  SELECT 18 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 301 AND 350
    AND
    p.score BETWEEN 171 AND 180
  ) AS f ON f.tmpid = 18
INNER JOIN (
  SELECT 18 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 351 AND 400
    AND
    p.score BETWEEN 171 AND 180
  ) AS g ON g.tmpid = 18
INNER JOIN (
  SELECT 18 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 401 AND 450
    AND
    p.score BETWEEN 171 AND 180
  ) AS h ON h.tmpid = 18
INNER JOIN (
  SELECT 18 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 451 AND 500
    AND
    p.score BETWEEN 171 AND 180
  ) AS i ON i.tmpid = 18
INNER JOIN (
  SELECT 18 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 501 AND 550
    AND
    p.score BETWEEN 171 AND 180
  ) AS j ON j.tmpid = 18
INNER JOIN (
  SELECT 18 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 551 AND 600
    AND
    p.score BETWEEN 171 AND 180
  ) AS k ON k.tmpid = 18
INNER JOIN (
  SELECT 18 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 601 AND 650
    AND
    p.score BETWEEN 171 AND 180
  ) AS l ON l.tmpid = 18
INNER JOIN (
  SELECT 18 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 651 AND 700
    AND
    p.score BETWEEN 171 AND 180
  ) AS m ON m.tmpid = 18
INNER JOIN (
  SELECT 18 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 701 AND 750
    AND
    p.score BETWEEN 171 AND 180
  ) AS n ON n.tmpid = 18
INNER JOIN (
  SELECT 18 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 751 AND 800
    AND
    p.score BETWEEN 171 AND 180
  ) AS o ON o.tmpid = 18
INNER JOIN (
  SELECT 18 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 801 AND 850
    AND
    p.score BETWEEN 171 AND 180
  ) AS p ON p.tmpid = 18
INNER JOIN (
  SELECT 18 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 851 AND 900
    AND
    p.score BETWEEN 171 AND 180
  ) AS q ON q.tmpid = 18
INNER JOIN (
  SELECT 18 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 901 AND 950
    AND
    p.score BETWEEN 171 AND 180
  ) AS r ON r.tmpid = 18
INNER JOIN (
  SELECT 18 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 951 AND 1000
    AND
    p.score BETWEEN 171 AND 180
  ) AS s ON s.tmpid = 18
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 1 and 50
  AND
  p.score BETWEEN 171 AND 180
UNION
SELECT 19 AS id, COUNT(*) AS '1 <= MLT <= 50', a.countOf AS '51 <= MLT <= 100', b.countOf AS '101 <= MLT <= 150', c.countOf AS '151 <= MLT <= 200', d.countOf AS '201 <= MLT <= 250', e.countOf AS '251 <= MLT <= 300', f.countOf AS '301 <= MLT <= 350', g.countOf AS '351 <= MLT <= 400', h.countOf AS '401 <= MLT <= 450', i.countOf AS '451 <= MLT <= 500', j.countOf AS '501 <= MLT <= 550', k.countOf AS '551 <= MLT <= 600', l.countOf AS '601 <= MLT <= 650', m.countOf AS '651 <= MLT <= 700', n.countOf AS '701 <= MLT <= 750', o.countOf AS '751 <= MLT <= 800', p.countOf AS '801 <= MLT <= 850', q.countOf AS '851 <= MLT <= 900', r.countOf AS '901 <= MLT <= 950', s.countOf AS '951 <= MLT <= 1000'
FROM posts p
INNER JOIN (
  SELECT 19 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 51 AND 100
    AND
    p.score BETWEEN 181 AND 190
  ) AS a ON a.tmpid = 19
INNER JOIN (
  SELECT 19 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 101 AND 150
    AND
    p.score BETWEEN 181 AND 190
  ) AS b ON b.tmpid = 19
INNER JOIN (
  SELECT 19 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 151 AND 200
    AND
    p.score BETWEEN 181 AND 190
  ) AS c ON c.tmpid = 19
INNER JOIN (
  SELECT 19 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 201 AND 250
    AND
    p.score BETWEEN 181 AND 190
  ) AS d ON d.tmpid = 19
INNER JOIN (
  SELECT 19 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 251 AND 300
    AND
    p.score BETWEEN 181 AND 190
  ) AS e ON e.tmpid = 19
INNER JOIN (
  SELECT 19 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 301 AND 350
    AND
    p.score BETWEEN 181 AND 190
  ) AS f ON f.tmpid = 19
INNER JOIN (
  SELECT 19 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 351 AND 400
    AND
    p.score BETWEEN 181 AND 190
  ) AS g ON g.tmpid = 19
INNER JOIN (
  SELECT 19 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 401 AND 450
    AND
    p.score BETWEEN 181 AND 190
  ) AS h ON h.tmpid = 19
INNER JOIN (
  SELECT 19 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 451 AND 500
    AND
    p.score BETWEEN 181 AND 190
  ) AS i ON i.tmpid = 19
INNER JOIN (
  SELECT 19 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 501 AND 550
    AND
    p.score BETWEEN 181 AND 190
  ) AS j ON j.tmpid = 19
INNER JOIN (
  SELECT 19 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 551 AND 600
    AND
    p.score BETWEEN 181 AND 190
  ) AS k ON k.tmpid = 19
INNER JOIN (
  SELECT 19 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 601 AND 650
    AND
    p.score BETWEEN 181 AND 190
  ) AS l ON l.tmpid = 19
INNER JOIN (
  SELECT 19 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 651 AND 700
    AND
    p.score BETWEEN 181 AND 190
  ) AS m ON m.tmpid = 19
INNER JOIN (
  SELECT 19 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 701 AND 750
    AND
    p.score BETWEEN 181 AND 190
  ) AS n ON n.tmpid = 19
INNER JOIN (
  SELECT 19 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 751 AND 800
    AND
    p.score BETWEEN 181 AND 190
  ) AS o ON o.tmpid = 19
INNER JOIN (
  SELECT 19 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 801 AND 850
    AND
    p.score BETWEEN 181 AND 190
  ) AS p ON p.tmpid = 19
INNER JOIN (
  SELECT 19 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 851 AND 900
    AND
    p.score BETWEEN 181 AND 190
  ) AS q ON q.tmpid = 19
INNER JOIN (
  SELECT 19 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 901 AND 950
    AND
    p.score BETWEEN 181 AND 190
  ) AS r ON r.tmpid = 19
INNER JOIN (
  SELECT 19 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 951 AND 1000
    AND
    p.score BETWEEN 181 AND 190
  ) AS s ON s.tmpid = 19
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 1 and 50
  AND
  p.score BETWEEN 181 AND 190
UNION
SELECT 20 AS id, COUNT(*) AS '1 <= MLT <= 50', a.countOf AS '51 <= MLT <= 100', b.countOf AS '101 <= MLT <= 150', c.countOf AS '151 <= MLT <= 200', d.countOf AS '201 <= MLT <= 250', e.countOf AS '251 <= MLT <= 300', f.countOf AS '301 <= MLT <= 350', g.countOf AS '351 <= MLT <= 400', h.countOf AS '401 <= MLT <= 450', i.countOf AS '451 <= MLT <= 500', j.countOf AS '501 <= MLT <= 550', k.countOf AS '551 <= MLT <= 600', l.countOf AS '601 <= MLT <= 650', m.countOf AS '651 <= MLT <= 700', n.countOf AS '701 <= MLT <= 750', o.countOf AS '751 <= MLT <= 800', p.countOf AS '801 <= MLT <= 850', q.countOf AS '851 <= MLT <= 900', r.countOf AS '901 <= MLT <= 950', s.countOf AS '951 <= MLT <= 1000'
FROM posts p
INNER JOIN (
  SELECT 20 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 51 AND 100
    AND
    p.score BETWEEN 191 AND 200
  ) AS a ON a.tmpid = 20
INNER JOIN (
  SELECT 20 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 101 AND 150
    AND
    p.score BETWEEN 191 AND 200
  ) AS b ON b.tmpid = 20
INNER JOIN (
  SELECT 20 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 151 AND 200
    AND
    p.score BETWEEN 191 AND 200
  ) AS c ON c.tmpid = 20
INNER JOIN (
  SELECT 20 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 201 AND 250
    AND
    p.score BETWEEN 191 AND 200
  ) AS d ON d.tmpid = 20
INNER JOIN (
  SELECT 20 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 251 AND 300
    AND
    p.score BETWEEN 191 AND 200
  ) AS e ON e.tmpid = 20
INNER JOIN (
  SELECT 20 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 301 AND 350
    AND
    p.score BETWEEN 191 AND 200
  ) AS f ON f.tmpid = 20
INNER JOIN (
  SELECT 20 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 351 AND 400
    AND
    p.score BETWEEN 191 AND 200
  ) AS g ON g.tmpid = 20
INNER JOIN (
  SELECT 20 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 401 AND 450
    AND
    p.score BETWEEN 191 AND 200
  ) AS h ON h.tmpid = 20
INNER JOIN (
  SELECT 20 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 451 AND 500
    AND
    p.score BETWEEN 191 AND 200
  ) AS i ON i.tmpid = 20
INNER JOIN (
  SELECT 20 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 501 AND 550
    AND
    p.score BETWEEN 191 AND 200
  ) AS j ON j.tmpid = 20
INNER JOIN (
  SELECT 20 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 551 AND 600
    AND
    p.score BETWEEN 191 AND 200
  ) AS k ON k.tmpid = 20
INNER JOIN (
  SELECT 20 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 601 AND 650
    AND
    p.score BETWEEN 191 AND 200
  ) AS l ON l.tmpid = 20
INNER JOIN (
  SELECT 20 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 651 AND 700
    AND
    p.score BETWEEN 191 AND 200
  ) AS m ON m.tmpid = 20
INNER JOIN (
  SELECT 20 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 701 AND 750
    AND
    p.score BETWEEN 191 AND 200
  ) AS n ON n.tmpid = 20
INNER JOIN (
  SELECT 20 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 751 AND 800
    AND
    p.score BETWEEN 191 AND 200
  ) AS o ON o.tmpid = 20
INNER JOIN (
  SELECT 20 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 801 AND 850
    AND
    p.score BETWEEN 191 AND 200
  ) AS p ON p.tmpid = 20
INNER JOIN (
  SELECT 20 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 851 AND 900
    AND
    p.score BETWEEN 191 AND 200
  ) AS q ON q.tmpid = 20
INNER JOIN (
  SELECT 20 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 901 AND 950
    AND
    p.score BETWEEN 191 AND 200
  ) AS r ON r.tmpid = 20
INNER JOIN (
  SELECT 20 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 951 AND 1000
    AND
    p.score BETWEEN 191 AND 200
  ) AS s ON s.tmpid = 20
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 1 and 50
  AND
  p.score BETWEEN 191 AND 200
UNION
SELECT 21 AS id, COUNT(*) AS '1 <= MLT <= 50', a.countOf AS '51 <= MLT <= 100', b.countOf AS '101 <= MLT <= 150', c.countOf AS '151 <= MLT <= 200', d.countOf AS '201 <= MLT <= 250', e.countOf AS '251 <= MLT <= 300', f.countOf AS '301 <= MLT <= 350', g.countOf AS '351 <= MLT <= 400', h.countOf AS '401 <= MLT <= 450', i.countOf AS '451 <= MLT <= 500', j.countOf AS '501 <= MLT <= 550', k.countOf AS '551 <= MLT <= 600', l.countOf AS '601 <= MLT <= 650', m.countOf AS '651 <= MLT <= 700', n.countOf AS '701 <= MLT <= 750', o.countOf AS '751 <= MLT <= 800', p.countOf AS '801 <= MLT <= 850', q.countOf AS '851 <= MLT <= 900', r.countOf AS '901 <= MLT <= 950', s.countOf AS '951 <= MLT <= 1000'
FROM posts p
INNER JOIN (
  SELECT 21 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 51 AND 100
    AND
    p.score BETWEEN 201 AND 210
  ) AS a ON a.tmpid = 21
INNER JOIN (
  SELECT 21 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 101 AND 150
    AND
    p.score BETWEEN 201 AND 210
  ) AS b ON b.tmpid = 21
INNER JOIN (
  SELECT 21 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 151 AND 200
    AND
    p.score BETWEEN 201 AND 210
  ) AS c ON c.tmpid = 21
INNER JOIN (
  SELECT 21 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 201 AND 250
    AND
    p.score BETWEEN 201 AND 210
  ) AS d ON d.tmpid = 21
INNER JOIN (
  SELECT 21 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 251 AND 300
    AND
    p.score BETWEEN 201 AND 210
  ) AS e ON e.tmpid = 21
INNER JOIN (
  SELECT 21 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 301 AND 350
    AND
    p.score BETWEEN 201 AND 210
  ) AS f ON f.tmpid = 21
INNER JOIN (
  SELECT 21 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 351 AND 400
    AND
    p.score BETWEEN 201 AND 210
  ) AS g ON g.tmpid = 21
INNER JOIN (
  SELECT 21 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 401 AND 450
    AND
    p.score BETWEEN 201 AND 210
  ) AS h ON h.tmpid = 21
INNER JOIN (
  SELECT 21 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 451 AND 500
    AND
    p.score BETWEEN 201 AND 210
  ) AS i ON i.tmpid = 21
INNER JOIN (
  SELECT 21 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 501 AND 550
    AND
    p.score BETWEEN 201 AND 210
  ) AS j ON j.tmpid = 21
INNER JOIN (
  SELECT 21 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 551 AND 600
    AND
    p.score BETWEEN 201 AND 210
  ) AS k ON k.tmpid = 21
INNER JOIN (
  SELECT 21 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 601 AND 650
    AND
    p.score BETWEEN 201 AND 210
  ) AS l ON l.tmpid = 21
INNER JOIN (
  SELECT 21 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 651 AND 700
    AND
    p.score BETWEEN 201 AND 210
  ) AS m ON m.tmpid = 21
INNER JOIN (
  SELECT 21 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 701 AND 750
    AND
    p.score BETWEEN 201 AND 210
  ) AS n ON n.tmpid = 21
INNER JOIN (
  SELECT 21 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 751 AND 800
    AND
    p.score BETWEEN 201 AND 210
  ) AS o ON o.tmpid = 21
INNER JOIN (
  SELECT 21 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 801 AND 850
    AND
    p.score BETWEEN 201 AND 210
  ) AS p ON p.tmpid = 21
INNER JOIN (
  SELECT 21 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 851 AND 900
    AND
    p.score BETWEEN 201 AND 210
  ) AS q ON q.tmpid = 21
INNER JOIN (
  SELECT 21 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 901 AND 950
    AND
    p.score BETWEEN 201 AND 210
  ) AS r ON r.tmpid = 21
INNER JOIN (
  SELECT 21 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 951 AND 1000
    AND
    p.score BETWEEN 201 AND 210
  ) AS s ON s.tmpid = 21
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 1 and 50
  AND
  p.score BETWEEN 201 AND 210
UNION
SELECT 22 AS id, COUNT(*) AS '1 <= MLT <= 50', a.countOf AS '51 <= MLT <= 100', b.countOf AS '101 <= MLT <= 150', c.countOf AS '151 <= MLT <= 200', d.countOf AS '201 <= MLT <= 250', e.countOf AS '251 <= MLT <= 300', f.countOf AS '301 <= MLT <= 350', g.countOf AS '351 <= MLT <= 400', h.countOf AS '401 <= MLT <= 450', i.countOf AS '451 <= MLT <= 500', j.countOf AS '501 <= MLT <= 550', k.countOf AS '551 <= MLT <= 600', l.countOf AS '601 <= MLT <= 650', m.countOf AS '651 <= MLT <= 700', n.countOf AS '701 <= MLT <= 750', o.countOf AS '751 <= MLT <= 800', p.countOf AS '801 <= MLT <= 850', q.countOf AS '851 <= MLT <= 900', r.countOf AS '901 <= MLT <= 950', s.countOf AS '951 <= MLT <= 1000'
FROM posts p
INNER JOIN (
  SELECT 22 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 51 AND 100
    AND
    p.score BETWEEN 211 AND 220
  ) AS a ON a.tmpid = 22
INNER JOIN (
  SELECT 22 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 101 AND 150
    AND
    p.score BETWEEN 211 AND 220
  ) AS b ON b.tmpid = 22
INNER JOIN (
  SELECT 22 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 151 AND 200
    AND
    p.score BETWEEN 211 AND 220
  ) AS c ON c.tmpid = 22
INNER JOIN (
  SELECT 22 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 201 AND 250
    AND
    p.score BETWEEN 211 AND 220
  ) AS d ON d.tmpid = 22
INNER JOIN (
  SELECT 22 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 251 AND 300
    AND
    p.score BETWEEN 211 AND 220
  ) AS e ON e.tmpid = 22
INNER JOIN (
  SELECT 22 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 301 AND 350
    AND
    p.score BETWEEN 211 AND 220
  ) AS f ON f.tmpid = 22
INNER JOIN (
  SELECT 22 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 351 AND 400
    AND
    p.score BETWEEN 211 AND 220
  ) AS g ON g.tmpid = 22
INNER JOIN (
  SELECT 22 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 401 AND 450
    AND
    p.score BETWEEN 211 AND 220
  ) AS h ON h.tmpid = 22
INNER JOIN (
  SELECT 22 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 451 AND 500
    AND
    p.score BETWEEN 211 AND 220
  ) AS i ON i.tmpid = 22
INNER JOIN (
  SELECT 22 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 501 AND 550
    AND
    p.score BETWEEN 211 AND 220
  ) AS j ON j.tmpid = 22
INNER JOIN (
  SELECT 22 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 551 AND 600
    AND
    p.score BETWEEN 211 AND 220
  ) AS k ON k.tmpid = 22
INNER JOIN (
  SELECT 22 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 601 AND 650
    AND
    p.score BETWEEN 211 AND 220
  ) AS l ON l.tmpid = 22
INNER JOIN (
  SELECT 22 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 651 AND 700
    AND
    p.score BETWEEN 211 AND 220
  ) AS m ON m.tmpid = 22
INNER JOIN (
  SELECT 22 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 701 AND 750
    AND
    p.score BETWEEN 211 AND 220
  ) AS n ON n.tmpid = 22
INNER JOIN (
  SELECT 22 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 751 AND 800
    AND
    p.score BETWEEN 211 AND 220
  ) AS o ON o.tmpid = 22
INNER JOIN (
  SELECT 22 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 801 AND 850
    AND
    p.score BETWEEN 211 AND 220
  ) AS p ON p.tmpid = 22
INNER JOIN (
  SELECT 22 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 851 AND 900
    AND
    p.score BETWEEN 211 AND 220
  ) AS q ON q.tmpid = 22
INNER JOIN (
  SELECT 22 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 901 AND 950
    AND
    p.score BETWEEN 211 AND 220
  ) AS r ON r.tmpid = 22
INNER JOIN (
  SELECT 22 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 951 AND 1000
    AND
    p.score BETWEEN 211 AND 220
  ) AS s ON s.tmpid = 22
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 1 and 50
  AND
  p.score BETWEEN 211 AND 220
UNION
SELECT 23 AS id, COUNT(*) AS '1 <= MLT <= 50', a.countOf AS '51 <= MLT <= 100', b.countOf AS '101 <= MLT <= 150', c.countOf AS '151 <= MLT <= 200', d.countOf AS '201 <= MLT <= 250', e.countOf AS '251 <= MLT <= 300', f.countOf AS '301 <= MLT <= 350', g.countOf AS '351 <= MLT <= 400', h.countOf AS '401 <= MLT <= 450', i.countOf AS '451 <= MLT <= 500', j.countOf AS '501 <= MLT <= 550', k.countOf AS '551 <= MLT <= 600', l.countOf AS '601 <= MLT <= 650', m.countOf AS '651 <= MLT <= 700', n.countOf AS '701 <= MLT <= 750', o.countOf AS '751 <= MLT <= 800', p.countOf AS '801 <= MLT <= 850', q.countOf AS '851 <= MLT <= 900', r.countOf AS '901 <= MLT <= 950', s.countOf AS '951 <= MLT <= 1000'
FROM posts p
INNER JOIN (
  SELECT 23 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 51 AND 100
    AND
    p.score BETWEEN 221 AND 230
  ) AS a ON a.tmpid = 23
INNER JOIN (
  SELECT 23 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 101 AND 150
    AND
    p.score BETWEEN 221 AND 230
  ) AS b ON b.tmpid = 23
INNER JOIN (
  SELECT 23 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 151 AND 200
    AND
    p.score BETWEEN 221 AND 230
  ) AS c ON c.tmpid = 23
INNER JOIN (
  SELECT 23 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 201 AND 250
    AND
    p.score BETWEEN 221 AND 230
  ) AS d ON d.tmpid = 23
INNER JOIN (
  SELECT 23 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 251 AND 300
    AND
    p.score BETWEEN 221 AND 230
  ) AS e ON e.tmpid = 23
INNER JOIN (
  SELECT 23 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 301 AND 350
    AND
    p.score BETWEEN 221 AND 230
  ) AS f ON f.tmpid = 23
INNER JOIN (
  SELECT 23 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 351 AND 400
    AND
    p.score BETWEEN 221 AND 230
  ) AS g ON g.tmpid = 23
INNER JOIN (
  SELECT 23 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 401 AND 450
    AND
    p.score BETWEEN 221 AND 230
  ) AS h ON h.tmpid = 23
INNER JOIN (
  SELECT 23 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 451 AND 500
    AND
    p.score BETWEEN 221 AND 230
  ) AS i ON i.tmpid = 23
INNER JOIN (
  SELECT 23 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 501 AND 550
    AND
    p.score BETWEEN 221 AND 230
  ) AS j ON j.tmpid = 23
INNER JOIN (
  SELECT 23 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 551 AND 600
    AND
    p.score BETWEEN 221 AND 230
  ) AS k ON k.tmpid = 23
INNER JOIN (
  SELECT 23 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 601 AND 650
    AND
    p.score BETWEEN 221 AND 230
  ) AS l ON l.tmpid = 23
INNER JOIN (
  SELECT 23 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 651 AND 700
    AND
    p.score BETWEEN 221 AND 230
  ) AS m ON m.tmpid = 23
INNER JOIN (
  SELECT 23 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 701 AND 750
    AND
    p.score BETWEEN 221 AND 230
  ) AS n ON n.tmpid = 23
INNER JOIN (
  SELECT 23 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 751 AND 800
    AND
    p.score BETWEEN 221 AND 230
  ) AS o ON o.tmpid = 23
INNER JOIN (
  SELECT 23 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 801 AND 850
    AND
    p.score BETWEEN 221 AND 230
  ) AS p ON p.tmpid = 23
INNER JOIN (
  SELECT 23 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 851 AND 900
    AND
    p.score BETWEEN 221 AND 230
  ) AS q ON q.tmpid = 23
INNER JOIN (
  SELECT 23 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 901 AND 950
    AND
    p.score BETWEEN 221 AND 230
  ) AS r ON r.tmpid = 23
INNER JOIN (
  SELECT 23 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 951 AND 1000
    AND
    p.score BETWEEN 221 AND 230
  ) AS s ON s.tmpid = 23
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 1 and 50
  AND
  p.score BETWEEN 221 AND 230
UNION
SELECT 24 AS id, COUNT(*) AS '1 <= MLT <= 50', a.countOf AS '51 <= MLT <= 100', b.countOf AS '101 <= MLT <= 150', c.countOf AS '151 <= MLT <= 200', d.countOf AS '201 <= MLT <= 250', e.countOf AS '251 <= MLT <= 300', f.countOf AS '301 <= MLT <= 350', g.countOf AS '351 <= MLT <= 400', h.countOf AS '401 <= MLT <= 450', i.countOf AS '451 <= MLT <= 500', j.countOf AS '501 <= MLT <= 550', k.countOf AS '551 <= MLT <= 600', l.countOf AS '601 <= MLT <= 650', m.countOf AS '651 <= MLT <= 700', n.countOf AS '701 <= MLT <= 750', o.countOf AS '751 <= MLT <= 800', p.countOf AS '801 <= MLT <= 850', q.countOf AS '851 <= MLT <= 900', r.countOf AS '901 <= MLT <= 950', s.countOf AS '951 <= MLT <= 1000'
FROM posts p
INNER JOIN (
  SELECT 24 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 51 AND 100
    AND
    p.score BETWEEN 231 AND 240
  ) AS a ON a.tmpid = 24
INNER JOIN (
  SELECT 24 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 101 AND 150
    AND
    p.score BETWEEN 231 AND 240
  ) AS b ON b.tmpid = 24
INNER JOIN (
  SELECT 24 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 151 AND 200
    AND
    p.score BETWEEN 231 AND 240
  ) AS c ON c.tmpid = 24
INNER JOIN (
  SELECT 24 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 201 AND 250
    AND
    p.score BETWEEN 231 AND 240
  ) AS d ON d.tmpid = 24
INNER JOIN (
  SELECT 24 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 251 AND 300
    AND
    p.score BETWEEN 231 AND 240
  ) AS e ON e.tmpid = 24
INNER JOIN (
  SELECT 24 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 301 AND 350
    AND
    p.score BETWEEN 231 AND 240
  ) AS f ON f.tmpid = 24
INNER JOIN (
  SELECT 24 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 351 AND 400
    AND
    p.score BETWEEN 231 AND 240
  ) AS g ON g.tmpid = 24
INNER JOIN (
  SELECT 24 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 401 AND 450
    AND
    p.score BETWEEN 231 AND 240
  ) AS h ON h.tmpid = 24
INNER JOIN (
  SELECT 24 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 451 AND 500
    AND
    p.score BETWEEN 231 AND 240
  ) AS i ON i.tmpid = 24
INNER JOIN (
  SELECT 24 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 501 AND 550
    AND
    p.score BETWEEN 231 AND 240
  ) AS j ON j.tmpid = 24
INNER JOIN (
  SELECT 24 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 551 AND 600
    AND
    p.score BETWEEN 231 AND 240
  ) AS k ON k.tmpid = 24
INNER JOIN (
  SELECT 24 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 601 AND 650
    AND
    p.score BETWEEN 231 AND 240
  ) AS l ON l.tmpid = 24
INNER JOIN (
  SELECT 24 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 651 AND 700
    AND
    p.score BETWEEN 231 AND 240
  ) AS m ON m.tmpid = 24
INNER JOIN (
  SELECT 24 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 701 AND 750
    AND
    p.score BETWEEN 231 AND 240
  ) AS n ON n.tmpid = 24
INNER JOIN (
  SELECT 24 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 751 AND 800
    AND
    p.score BETWEEN 231 AND 240
  ) AS o ON o.tmpid = 24
INNER JOIN (
  SELECT 24 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 801 AND 850
    AND
    p.score BETWEEN 231 AND 240
  ) AS p ON p.tmpid = 24
INNER JOIN (
  SELECT 24 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 851 AND 900
    AND
    p.score BETWEEN 231 AND 240
  ) AS q ON q.tmpid = 24
INNER JOIN (
  SELECT 24 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 901 AND 950
    AND
    p.score BETWEEN 231 AND 240
  ) AS r ON r.tmpid = 24
INNER JOIN (
  SELECT 24 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 951 AND 1000
    AND
    p.score BETWEEN 231 AND 240
  ) AS s ON s.tmpid = 24
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 1 and 50
  AND
  p.score BETWEEN 231 AND 240
UNION
SELECT 25 AS id, COUNT(*) AS '1 <= MLT <= 50', a.countOf AS '51 <= MLT <= 100', b.countOf AS '101 <= MLT <= 150', c.countOf AS '151 <= MLT <= 200', d.countOf AS '201 <= MLT <= 250', e.countOf AS '251 <= MLT <= 300', f.countOf AS '301 <= MLT <= 350', g.countOf AS '351 <= MLT <= 400', h.countOf AS '401 <= MLT <= 450', i.countOf AS '451 <= MLT <= 500', j.countOf AS '501 <= MLT <= 550', k.countOf AS '551 <= MLT <= 600', l.countOf AS '601 <= MLT <= 650', m.countOf AS '651 <= MLT <= 700', n.countOf AS '701 <= MLT <= 750', o.countOf AS '751 <= MLT <= 800', p.countOf AS '801 <= MLT <= 850', q.countOf AS '851 <= MLT <= 900', r.countOf AS '901 <= MLT <= 950', s.countOf AS '951 <= MLT <= 1000'
FROM posts p
INNER JOIN (
  SELECT 25 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 51 AND 100
    AND
    p.score BETWEEN 241 AND 250
  ) AS a ON a.tmpid = 25
INNER JOIN (
  SELECT 25 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 101 AND 150
    AND
    p.score BETWEEN 241 AND 250
  ) AS b ON b.tmpid = 25
INNER JOIN (
  SELECT 25 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 151 AND 200
    AND
    p.score BETWEEN 241 AND 250
  ) AS c ON c.tmpid = 25
INNER JOIN (
  SELECT 25 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 201 AND 250
    AND
    p.score BETWEEN 241 AND 250
  ) AS d ON d.tmpid = 25
INNER JOIN (
  SELECT 25 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 251 AND 300
    AND
    p.score BETWEEN 241 AND 250
  ) AS e ON e.tmpid = 25
INNER JOIN (
  SELECT 25 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 301 AND 350
    AND
    p.score BETWEEN 241 AND 250
  ) AS f ON f.tmpid = 25
INNER JOIN (
  SELECT 25 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 351 AND 400
    AND
    p.score BETWEEN 241 AND 250
  ) AS g ON g.tmpid = 25
INNER JOIN (
  SELECT 25 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 401 AND 450
    AND
    p.score BETWEEN 241 AND 250
  ) AS h ON h.tmpid = 25
INNER JOIN (
  SELECT 25 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 451 AND 500
    AND
    p.score BETWEEN 241 AND 250
  ) AS i ON i.tmpid = 25
INNER JOIN (
  SELECT 25 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 501 AND 550
    AND
    p.score BETWEEN 241 AND 250
  ) AS j ON j.tmpid = 25
INNER JOIN (
  SELECT 25 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 551 AND 600
    AND
    p.score BETWEEN 241 AND 250
  ) AS k ON k.tmpid = 25
INNER JOIN (
  SELECT 25 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 601 AND 650
    AND
    p.score BETWEEN 241 AND 250
  ) AS l ON l.tmpid = 25
INNER JOIN (
  SELECT 25 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 651 AND 700
    AND
    p.score BETWEEN 241 AND 250
  ) AS m ON m.tmpid = 25
INNER JOIN (
  SELECT 25 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 701 AND 750
    AND
    p.score BETWEEN 241 AND 250
  ) AS n ON n.tmpid = 25
INNER JOIN (
  SELECT 25 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 751 AND 800
    AND
    p.score BETWEEN 241 AND 250
  ) AS o ON o.tmpid = 25
INNER JOIN (
  SELECT 25 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 801 AND 850
    AND
    p.score BETWEEN 241 AND 250
  ) AS p ON p.tmpid = 25
INNER JOIN (
  SELECT 25 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 851 AND 900
    AND
    p.score BETWEEN 241 AND 250
  ) AS q ON q.tmpid = 25
INNER JOIN (
  SELECT 25 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 901 AND 950
    AND
    p.score BETWEEN 241 AND 250
  ) AS r ON r.tmpid = 25
INNER JOIN (
  SELECT 25 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 951 AND 1000
    AND
    p.score BETWEEN 241 AND 250
  ) AS s ON s.tmpid = 25
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 1 and 50
  AND
  p.score BETWEEN 241 AND 250
UNION
SELECT 26 AS id, COUNT(*) AS '1 <= MLT <= 50', a.countOf AS '51 <= MLT <= 100', b.countOf AS '101 <= MLT <= 150', c.countOf AS '151 <= MLT <= 200', d.countOf AS '201 <= MLT <= 250', e.countOf AS '251 <= MLT <= 300', f.countOf AS '301 <= MLT <= 350', g.countOf AS '351 <= MLT <= 400', h.countOf AS '401 <= MLT <= 450', i.countOf AS '451 <= MLT <= 500', j.countOf AS '501 <= MLT <= 550', k.countOf AS '551 <= MLT <= 600', l.countOf AS '601 <= MLT <= 650', m.countOf AS '651 <= MLT <= 700', n.countOf AS '701 <= MLT <= 750', o.countOf AS '751 <= MLT <= 800', p.countOf AS '801 <= MLT <= 850', q.countOf AS '851 <= MLT <= 900', r.countOf AS '901 <= MLT <= 950', s.countOf AS '951 <= MLT <= 1000'
FROM posts p
INNER JOIN (
  SELECT 26 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 51 AND 100
    AND
    p.score BETWEEN 251 AND 260
  ) AS a ON a.tmpid = 26
INNER JOIN (
  SELECT 26 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 101 AND 150
    AND
    p.score BETWEEN 251 AND 260
  ) AS b ON b.tmpid = 26
INNER JOIN (
  SELECT 26 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 151 AND 200
    AND
    p.score BETWEEN 251 AND 260
  ) AS c ON c.tmpid = 26
INNER JOIN (
  SELECT 26 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 201 AND 250
    AND
    p.score BETWEEN 251 AND 260
  ) AS d ON d.tmpid = 26
INNER JOIN (
  SELECT 26 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 251 AND 300
    AND
    p.score BETWEEN 251 AND 260
  ) AS e ON e.tmpid = 26
INNER JOIN (
  SELECT 26 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 301 AND 350
    AND
    p.score BETWEEN 251 AND 260
  ) AS f ON f.tmpid = 26
INNER JOIN (
  SELECT 26 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 351 AND 400
    AND
    p.score BETWEEN 251 AND 260
  ) AS g ON g.tmpid = 26
INNER JOIN (
  SELECT 26 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 401 AND 450
    AND
    p.score BETWEEN 251 AND 260
  ) AS h ON h.tmpid = 26
INNER JOIN (
  SELECT 26 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 451 AND 500
    AND
    p.score BETWEEN 251 AND 260
  ) AS i ON i.tmpid = 26
INNER JOIN (
  SELECT 26 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 501 AND 550
    AND
    p.score BETWEEN 251 AND 260
  ) AS j ON j.tmpid = 26
INNER JOIN (
  SELECT 26 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 551 AND 600
    AND
    p.score BETWEEN 251 AND 260
  ) AS k ON k.tmpid = 26
INNER JOIN (
  SELECT 26 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 601 AND 650
    AND
    p.score BETWEEN 251 AND 260
  ) AS l ON l.tmpid = 26
INNER JOIN (
  SELECT 26 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 651 AND 700
    AND
    p.score BETWEEN 251 AND 260
  ) AS m ON m.tmpid = 26
INNER JOIN (
  SELECT 26 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 701 AND 750
    AND
    p.score BETWEEN 251 AND 260
  ) AS n ON n.tmpid = 26
INNER JOIN (
  SELECT 26 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 751 AND 800
    AND
    p.score BETWEEN 251 AND 260
  ) AS o ON o.tmpid = 26
INNER JOIN (
  SELECT 26 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 801 AND 850
    AND
    p.score BETWEEN 251 AND 260
  ) AS p ON p.tmpid = 26
INNER JOIN (
  SELECT 26 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 851 AND 900
    AND
    p.score BETWEEN 251 AND 260
  ) AS q ON q.tmpid = 26
INNER JOIN (
  SELECT 26 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 901 AND 950
    AND
    p.score BETWEEN 251 AND 260
  ) AS r ON r.tmpid = 26
INNER JOIN (
  SELECT 26 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 951 AND 1000
    AND
    p.score BETWEEN 251 AND 260
  ) AS s ON s.tmpid = 26
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 1 and 50
  AND
  p.score BETWEEN 251 AND 260
UNION
SELECT 27 AS id, COUNT(*) AS '1 <= MLT <= 50', a.countOf AS '51 <= MLT <= 100', b.countOf AS '101 <= MLT <= 150', c.countOf AS '151 <= MLT <= 200', d.countOf AS '201 <= MLT <= 250', e.countOf AS '251 <= MLT <= 300', f.countOf AS '301 <= MLT <= 350', g.countOf AS '351 <= MLT <= 400', h.countOf AS '401 <= MLT <= 450', i.countOf AS '451 <= MLT <= 500', j.countOf AS '501 <= MLT <= 550', k.countOf AS '551 <= MLT <= 600', l.countOf AS '601 <= MLT <= 650', m.countOf AS '651 <= MLT <= 700', n.countOf AS '701 <= MLT <= 750', o.countOf AS '751 <= MLT <= 800', p.countOf AS '801 <= MLT <= 850', q.countOf AS '851 <= MLT <= 900', r.countOf AS '901 <= MLT <= 950', s.countOf AS '951 <= MLT <= 1000'
FROM posts p
INNER JOIN (
  SELECT 27 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 51 AND 100
    AND
    p.score BETWEEN 261 AND 270
  ) AS a ON a.tmpid = 27
INNER JOIN (
  SELECT 27 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 101 AND 150
    AND
    p.score BETWEEN 261 AND 270
  ) AS b ON b.tmpid = 27
INNER JOIN (
  SELECT 27 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 151 AND 200
    AND
    p.score BETWEEN 261 AND 270
  ) AS c ON c.tmpid = 27
INNER JOIN (
  SELECT 27 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 201 AND 250
    AND
    p.score BETWEEN 261 AND 270
  ) AS d ON d.tmpid = 27
INNER JOIN (
  SELECT 27 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 251 AND 300
    AND
    p.score BETWEEN 261 AND 270
  ) AS e ON e.tmpid = 27
INNER JOIN (
  SELECT 27 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 301 AND 350
    AND
    p.score BETWEEN 261 AND 270
  ) AS f ON f.tmpid = 27
INNER JOIN (
  SELECT 27 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 351 AND 400
    AND
    p.score BETWEEN 261 AND 270
  ) AS g ON g.tmpid = 27
INNER JOIN (
  SELECT 27 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 401 AND 450
    AND
    p.score BETWEEN 261 AND 270
  ) AS h ON h.tmpid = 27
INNER JOIN (
  SELECT 27 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 451 AND 500
    AND
    p.score BETWEEN 261 AND 270
  ) AS i ON i.tmpid = 27
INNER JOIN (
  SELECT 27 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 501 AND 550
    AND
    p.score BETWEEN 261 AND 270
  ) AS j ON j.tmpid = 27
INNER JOIN (
  SELECT 27 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 551 AND 600
    AND
    p.score BETWEEN 261 AND 270
  ) AS k ON k.tmpid = 27
INNER JOIN (
  SELECT 27 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 601 AND 650
    AND
    p.score BETWEEN 261 AND 270
  ) AS l ON l.tmpid = 27
INNER JOIN (
  SELECT 27 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 651 AND 700
    AND
    p.score BETWEEN 261 AND 270
  ) AS m ON m.tmpid = 27
INNER JOIN (
  SELECT 27 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 701 AND 750
    AND
    p.score BETWEEN 261 AND 270
  ) AS n ON n.tmpid = 27
INNER JOIN (
  SELECT 27 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 751 AND 800
    AND
    p.score BETWEEN 261 AND 270
  ) AS o ON o.tmpid = 27
INNER JOIN (
  SELECT 27 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 801 AND 850
    AND
    p.score BETWEEN 261 AND 270
  ) AS p ON p.tmpid = 27
INNER JOIN (
  SELECT 27 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 851 AND 900
    AND
    p.score BETWEEN 261 AND 270
  ) AS q ON q.tmpid = 27
INNER JOIN (
  SELECT 27 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 901 AND 950
    AND
    p.score BETWEEN 261 AND 270
  ) AS r ON r.tmpid = 27
INNER JOIN (
  SELECT 27 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 951 AND 1000
    AND
    p.score BETWEEN 261 AND 270
  ) AS s ON s.tmpid = 27
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 1 and 50
  AND
  p.score BETWEEN 261 AND 270
UNION
SELECT 28 AS id, COUNT(*) AS '1 <= MLT <= 50', a.countOf AS '51 <= MLT <= 100', b.countOf AS '101 <= MLT <= 150', c.countOf AS '151 <= MLT <= 200', d.countOf AS '201 <= MLT <= 250', e.countOf AS '251 <= MLT <= 300', f.countOf AS '301 <= MLT <= 350', g.countOf AS '351 <= MLT <= 400', h.countOf AS '401 <= MLT <= 450', i.countOf AS '451 <= MLT <= 500', j.countOf AS '501 <= MLT <= 550', k.countOf AS '551 <= MLT <= 600', l.countOf AS '601 <= MLT <= 650', m.countOf AS '651 <= MLT <= 700', n.countOf AS '701 <= MLT <= 750', o.countOf AS '751 <= MLT <= 800', p.countOf AS '801 <= MLT <= 850', q.countOf AS '851 <= MLT <= 900', r.countOf AS '901 <= MLT <= 950', s.countOf AS '951 <= MLT <= 1000'
FROM posts p
INNER JOIN (
  SELECT 28 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 51 AND 100
    AND
    p.score BETWEEN 271 AND 280
  ) AS a ON a.tmpid = 28
INNER JOIN (
  SELECT 28 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 101 AND 150
    AND
    p.score BETWEEN 271 AND 280
  ) AS b ON b.tmpid = 28
INNER JOIN (
  SELECT 28 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 151 AND 200
    AND
    p.score BETWEEN 271 AND 280
  ) AS c ON c.tmpid = 28
INNER JOIN (
  SELECT 28 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 201 AND 250
    AND
    p.score BETWEEN 271 AND 280
  ) AS d ON d.tmpid = 28
INNER JOIN (
  SELECT 28 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 251 AND 300
    AND
    p.score BETWEEN 271 AND 280
  ) AS e ON e.tmpid = 28
INNER JOIN (
  SELECT 28 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 301 AND 350
    AND
    p.score BETWEEN 271 AND 280
  ) AS f ON f.tmpid = 28
INNER JOIN (
  SELECT 28 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 351 AND 400
    AND
    p.score BETWEEN 271 AND 280
  ) AS g ON g.tmpid = 28
INNER JOIN (
  SELECT 28 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 401 AND 450
    AND
    p.score BETWEEN 271 AND 280
  ) AS h ON h.tmpid = 28
INNER JOIN (
  SELECT 28 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 451 AND 500
    AND
    p.score BETWEEN 271 AND 280
  ) AS i ON i.tmpid = 28
INNER JOIN (
  SELECT 28 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 501 AND 550
    AND
    p.score BETWEEN 271 AND 280
  ) AS j ON j.tmpid = 28
INNER JOIN (
  SELECT 28 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 551 AND 600
    AND
    p.score BETWEEN 271 AND 280
  ) AS k ON k.tmpid = 28
INNER JOIN (
  SELECT 28 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 601 AND 650
    AND
    p.score BETWEEN 271 AND 280
  ) AS l ON l.tmpid = 28
INNER JOIN (
  SELECT 28 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 651 AND 700
    AND
    p.score BETWEEN 271 AND 280
  ) AS m ON m.tmpid = 28
INNER JOIN (
  SELECT 28 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 701 AND 750
    AND
    p.score BETWEEN 271 AND 280
  ) AS n ON n.tmpid = 28
INNER JOIN (
  SELECT 28 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 751 AND 800
    AND
    p.score BETWEEN 271 AND 280
  ) AS o ON o.tmpid = 28
INNER JOIN (
  SELECT 28 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 801 AND 850
    AND
    p.score BETWEEN 271 AND 280
  ) AS p ON p.tmpid = 28
INNER JOIN (
  SELECT 28 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 851 AND 900
    AND
    p.score BETWEEN 271 AND 280
  ) AS q ON q.tmpid = 28
INNER JOIN (
  SELECT 28 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 901 AND 950
    AND
    p.score BETWEEN 271 AND 280
  ) AS r ON r.tmpid = 28
INNER JOIN (
  SELECT 28 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 951 AND 1000
    AND
    p.score BETWEEN 271 AND 280
  ) AS s ON s.tmpid = 28
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 1 and 50
  AND
  p.score BETWEEN 271 AND 280
UNION
SELECT 29 AS id, COUNT(*) AS '1 <= MLT <= 50', a.countOf AS '51 <= MLT <= 100', b.countOf AS '101 <= MLT <= 150', c.countOf AS '151 <= MLT <= 200', d.countOf AS '201 <= MLT <= 250', e.countOf AS '251 <= MLT <= 300', f.countOf AS '301 <= MLT <= 350', g.countOf AS '351 <= MLT <= 400', h.countOf AS '401 <= MLT <= 450', i.countOf AS '451 <= MLT <= 500', j.countOf AS '501 <= MLT <= 550', k.countOf AS '551 <= MLT <= 600', l.countOf AS '601 <= MLT <= 650', m.countOf AS '651 <= MLT <= 700', n.countOf AS '701 <= MLT <= 750', o.countOf AS '751 <= MLT <= 800', p.countOf AS '801 <= MLT <= 850', q.countOf AS '851 <= MLT <= 900', r.countOf AS '901 <= MLT <= 950', s.countOf AS '951 <= MLT <= 1000'
FROM posts p
INNER JOIN (
  SELECT 29 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 51 AND 100
    AND
    p.score BETWEEN 281 AND 290
  ) AS a ON a.tmpid = 29
INNER JOIN (
  SELECT 29 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 101 AND 150
    AND
    p.score BETWEEN 281 AND 290
  ) AS b ON b.tmpid = 29
INNER JOIN (
  SELECT 29 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 151 AND 200
    AND
    p.score BETWEEN 281 AND 290
  ) AS c ON c.tmpid = 29
INNER JOIN (
  SELECT 29 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 201 AND 250
    AND
    p.score BETWEEN 281 AND 290
  ) AS d ON d.tmpid = 29
INNER JOIN (
  SELECT 29 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 251 AND 300
    AND
    p.score BETWEEN 281 AND 290
  ) AS e ON e.tmpid = 29
INNER JOIN (
  SELECT 29 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 301 AND 350
    AND
    p.score BETWEEN 281 AND 290
  ) AS f ON f.tmpid = 29
INNER JOIN (
  SELECT 29 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 351 AND 400
    AND
    p.score BETWEEN 281 AND 290
  ) AS g ON g.tmpid = 29
INNER JOIN (
  SELECT 29 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 401 AND 450
    AND
    p.score BETWEEN 281 AND 290
  ) AS h ON h.tmpid = 29
INNER JOIN (
  SELECT 29 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 451 AND 500
    AND
    p.score BETWEEN 281 AND 290
  ) AS i ON i.tmpid = 29
INNER JOIN (
  SELECT 29 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 501 AND 550
    AND
    p.score BETWEEN 281 AND 290
  ) AS j ON j.tmpid = 29
INNER JOIN (
  SELECT 29 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 551 AND 600
    AND
    p.score BETWEEN 281 AND 290
  ) AS k ON k.tmpid = 29
INNER JOIN (
  SELECT 29 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 601 AND 650
    AND
    p.score BETWEEN 281 AND 290
  ) AS l ON l.tmpid = 29
INNER JOIN (
  SELECT 29 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 651 AND 700
    AND
    p.score BETWEEN 281 AND 290
  ) AS m ON m.tmpid = 29
INNER JOIN (
  SELECT 29 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 701 AND 750
    AND
    p.score BETWEEN 281 AND 290
  ) AS n ON n.tmpid = 29
INNER JOIN (
  SELECT 29 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 751 AND 800
    AND
    p.score BETWEEN 281 AND 290
  ) AS o ON o.tmpid = 29
INNER JOIN (
  SELECT 29 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 801 AND 850
    AND
    p.score BETWEEN 281 AND 290
  ) AS p ON p.tmpid = 29
INNER JOIN (
  SELECT 29 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 851 AND 900
    AND
    p.score BETWEEN 281 AND 290
  ) AS q ON q.tmpid = 29
INNER JOIN (
  SELECT 29 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 901 AND 950
    AND
    p.score BETWEEN 281 AND 290
  ) AS r ON r.tmpid = 29
INNER JOIN (
  SELECT 29 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 951 AND 1000
    AND
    p.score BETWEEN 281 AND 290
  ) AS s ON s.tmpid = 29
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 1 and 50
  AND
  p.score BETWEEN 281 AND 290
UNION
SELECT 30 AS id, COUNT(*) AS '1 <= MLT <= 50', a.countOf AS '51 <= MLT <= 100', b.countOf AS '101 <= MLT <= 150', c.countOf AS '151 <= MLT <= 200', d.countOf AS '201 <= MLT <= 250', e.countOf AS '251 <= MLT <= 300', f.countOf AS '301 <= MLT <= 350', g.countOf AS '351 <= MLT <= 400', h.countOf AS '401 <= MLT <= 450', i.countOf AS '451 <= MLT <= 500', j.countOf AS '501 <= MLT <= 550', k.countOf AS '551 <= MLT <= 600', l.countOf AS '601 <= MLT <= 650', m.countOf AS '651 <= MLT <= 700', n.countOf AS '701 <= MLT <= 750', o.countOf AS '751 <= MLT <= 800', p.countOf AS '801 <= MLT <= 850', q.countOf AS '851 <= MLT <= 900', r.countOf AS '901 <= MLT <= 950', s.countOf AS '951 <= MLT <= 1000'
FROM posts p
INNER JOIN (
  SELECT 30 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 51 AND 100
    AND
    p.score BETWEEN 291 AND 300
  ) AS a ON a.tmpid = 30
INNER JOIN (
  SELECT 30 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 101 AND 150
    AND
    p.score BETWEEN 291 AND 300
  ) AS b ON b.tmpid = 30
INNER JOIN (
  SELECT 30 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 151 AND 200
    AND
    p.score BETWEEN 291 AND 300
  ) AS c ON c.tmpid = 30
INNER JOIN (
  SELECT 30 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 201 AND 250
    AND
    p.score BETWEEN 291 AND 300
  ) AS d ON d.tmpid = 30
INNER JOIN (
  SELECT 30 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 251 AND 300
    AND
    p.score BETWEEN 291 AND 300
  ) AS e ON e.tmpid = 30
INNER JOIN (
  SELECT 30 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 301 AND 350
    AND
    p.score BETWEEN 291 AND 300
  ) AS f ON f.tmpid = 30
INNER JOIN (
  SELECT 30 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 351 AND 400
    AND
    p.score BETWEEN 291 AND 300
  ) AS g ON g.tmpid = 30
INNER JOIN (
  SELECT 30 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 401 AND 450
    AND
    p.score BETWEEN 291 AND 300
  ) AS h ON h.tmpid = 30
INNER JOIN (
  SELECT 30 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 451 AND 500
    AND
    p.score BETWEEN 291 AND 300
  ) AS i ON i.tmpid = 30
INNER JOIN (
  SELECT 30 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 501 AND 550
    AND
    p.score BETWEEN 291 AND 300
  ) AS j ON j.tmpid = 30
INNER JOIN (
  SELECT 30 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 551 AND 600
    AND
    p.score BETWEEN 291 AND 300
  ) AS k ON k.tmpid = 30
INNER JOIN (
  SELECT 30 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 601 AND 650
    AND
    p.score BETWEEN 291 AND 300
  ) AS l ON l.tmpid = 30
INNER JOIN (
  SELECT 30 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 651 AND 700
    AND
    p.score BETWEEN 291 AND 300
  ) AS m ON m.tmpid = 30
INNER JOIN (
  SELECT 30 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 701 AND 750
    AND
    p.score BETWEEN 291 AND 300
  ) AS n ON n.tmpid = 30
INNER JOIN (
  SELECT 30 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 751 AND 800
    AND
    p.score BETWEEN 291 AND 300
  ) AS o ON o.tmpid = 30
INNER JOIN (
  SELECT 30 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 801 AND 850
    AND
    p.score BETWEEN 291 AND 300
  ) AS p ON p.tmpid = 30
INNER JOIN (
  SELECT 30 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 851 AND 900
    AND
    p.score BETWEEN 291 AND 300
  ) AS q ON q.tmpid = 30
INNER JOIN (
  SELECT 30 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 901 AND 950
    AND
    p.score BETWEEN 291 AND 300
  ) AS r ON r.tmpid = 30
INNER JOIN (
  SELECT 30 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 951 AND 1000
    AND
    p.score BETWEEN 291 AND 300
  ) AS s ON s.tmpid = 30
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 1 and 50
  AND
  p.score BETWEEN 291 AND 300
UNION
SELECT 31 AS id, COUNT(*) AS '1 <= MLT <= 50', a.countOf AS '51 <= MLT <= 100', b.countOf AS '101 <= MLT <= 150', c.countOf AS '151 <= MLT <= 200', d.countOf AS '201 <= MLT <= 250', e.countOf AS '251 <= MLT <= 300', f.countOf AS '301 <= MLT <= 350', g.countOf AS '351 <= MLT <= 400', h.countOf AS '401 <= MLT <= 450', i.countOf AS '451 <= MLT <= 500', j.countOf AS '501 <= MLT <= 550', k.countOf AS '551 <= MLT <= 600', l.countOf AS '601 <= MLT <= 650', m.countOf AS '651 <= MLT <= 700', n.countOf AS '701 <= MLT <= 750', o.countOf AS '751 <= MLT <= 800', p.countOf AS '801 <= MLT <= 850', q.countOf AS '851 <= MLT <= 900', r.countOf AS '901 <= MLT <= 950', s.countOf AS '951 <= MLT <= 1000'
FROM posts p
INNER JOIN (
  SELECT 31 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 51 AND 100
    AND
    p.score BETWEEN 301 AND 310
  ) AS a ON a.tmpid = 31
INNER JOIN (
  SELECT 31 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 101 AND 150
    AND
    p.score BETWEEN 301 AND 310
  ) AS b ON b.tmpid = 31
INNER JOIN (
  SELECT 31 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 151 AND 200
    AND
    p.score BETWEEN 301 AND 310
  ) AS c ON c.tmpid = 31
INNER JOIN (
  SELECT 31 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 201 AND 250
    AND
    p.score BETWEEN 301 AND 310
  ) AS d ON d.tmpid = 31
INNER JOIN (
  SELECT 31 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 251 AND 300
    AND
    p.score BETWEEN 301 AND 310
  ) AS e ON e.tmpid = 31
INNER JOIN (
  SELECT 31 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 301 AND 350
    AND
    p.score BETWEEN 301 AND 310
  ) AS f ON f.tmpid = 31
INNER JOIN (
  SELECT 31 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 351 AND 400
    AND
    p.score BETWEEN 301 AND 310
  ) AS g ON g.tmpid = 31
INNER JOIN (
  SELECT 31 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 401 AND 450
    AND
    p.score BETWEEN 301 AND 310
  ) AS h ON h.tmpid = 31
INNER JOIN (
  SELECT 31 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 451 AND 500
    AND
    p.score BETWEEN 301 AND 310
  ) AS i ON i.tmpid = 31
INNER JOIN (
  SELECT 31 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 501 AND 550
    AND
    p.score BETWEEN 301 AND 310
  ) AS j ON j.tmpid = 31
INNER JOIN (
  SELECT 31 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 551 AND 600
    AND
    p.score BETWEEN 301 AND 310
  ) AS k ON k.tmpid = 31
INNER JOIN (
  SELECT 31 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 601 AND 650
    AND
    p.score BETWEEN 301 AND 310
  ) AS l ON l.tmpid = 31
INNER JOIN (
  SELECT 31 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 651 AND 700
    AND
    p.score BETWEEN 301 AND 310
  ) AS m ON m.tmpid = 31
INNER JOIN (
  SELECT 31 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 701 AND 750
    AND
    p.score BETWEEN 301 AND 310
  ) AS n ON n.tmpid = 31
INNER JOIN (
  SELECT 31 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 751 AND 800
    AND
    p.score BETWEEN 301 AND 310
  ) AS o ON o.tmpid = 31
INNER JOIN (
  SELECT 31 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 801 AND 850
    AND
    p.score BETWEEN 301 AND 310
  ) AS p ON p.tmpid = 31
INNER JOIN (
  SELECT 31 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 851 AND 900
    AND
    p.score BETWEEN 301 AND 310
  ) AS q ON q.tmpid = 31
INNER JOIN (
  SELECT 31 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 901 AND 950
    AND
    p.score BETWEEN 301 AND 310
  ) AS r ON r.tmpid = 31
INNER JOIN (
  SELECT 31 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 951 AND 1000
    AND
    p.score BETWEEN 301 AND 310
  ) AS s ON s.tmpid = 31
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 1 and 50
  AND
  p.score BETWEEN 301 AND 310
UNION
SELECT 32 AS id, COUNT(*) AS '1 <= MLT <= 50', a.countOf AS '51 <= MLT <= 100', b.countOf AS '101 <= MLT <= 150', c.countOf AS '151 <= MLT <= 200', d.countOf AS '201 <= MLT <= 250', e.countOf AS '251 <= MLT <= 300', f.countOf AS '301 <= MLT <= 350', g.countOf AS '351 <= MLT <= 400', h.countOf AS '401 <= MLT <= 450', i.countOf AS '451 <= MLT <= 500', j.countOf AS '501 <= MLT <= 550', k.countOf AS '551 <= MLT <= 600', l.countOf AS '601 <= MLT <= 650', m.countOf AS '651 <= MLT <= 700', n.countOf AS '701 <= MLT <= 750', o.countOf AS '751 <= MLT <= 800', p.countOf AS '801 <= MLT <= 850', q.countOf AS '851 <= MLT <= 900', r.countOf AS '901 <= MLT <= 950', s.countOf AS '951 <= MLT <= 1000'
FROM posts p
INNER JOIN (
  SELECT 32 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 51 AND 100
    AND
    p.score BETWEEN 311 AND 320
  ) AS a ON a.tmpid = 32
INNER JOIN (
  SELECT 32 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 101 AND 150
    AND
    p.score BETWEEN 311 AND 320
  ) AS b ON b.tmpid = 32
INNER JOIN (
  SELECT 32 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 151 AND 200
    AND
    p.score BETWEEN 311 AND 320
  ) AS c ON c.tmpid = 32
INNER JOIN (
  SELECT 32 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 201 AND 250
    AND
    p.score BETWEEN 311 AND 320
  ) AS d ON d.tmpid = 32
INNER JOIN (
  SELECT 32 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 251 AND 300
    AND
    p.score BETWEEN 311 AND 320
  ) AS e ON e.tmpid = 32
INNER JOIN (
  SELECT 32 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 301 AND 350
    AND
    p.score BETWEEN 311 AND 320
  ) AS f ON f.tmpid = 32
INNER JOIN (
  SELECT 32 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 351 AND 400
    AND
    p.score BETWEEN 311 AND 320
  ) AS g ON g.tmpid = 32
INNER JOIN (
  SELECT 32 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 401 AND 450
    AND
    p.score BETWEEN 311 AND 320
  ) AS h ON h.tmpid = 32
INNER JOIN (
  SELECT 32 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 451 AND 500
    AND
    p.score BETWEEN 311 AND 320
  ) AS i ON i.tmpid = 32
INNER JOIN (
  SELECT 32 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 501 AND 550
    AND
    p.score BETWEEN 311 AND 320
  ) AS j ON j.tmpid = 32
INNER JOIN (
  SELECT 32 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 551 AND 600
    AND
    p.score BETWEEN 311 AND 320
  ) AS k ON k.tmpid = 32
INNER JOIN (
  SELECT 32 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 601 AND 650
    AND
    p.score BETWEEN 311 AND 320
  ) AS l ON l.tmpid = 32
INNER JOIN (
  SELECT 32 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 651 AND 700
    AND
    p.score BETWEEN 311 AND 320
  ) AS m ON m.tmpid = 32
INNER JOIN (
  SELECT 32 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 701 AND 750
    AND
    p.score BETWEEN 311 AND 320
  ) AS n ON n.tmpid = 32
INNER JOIN (
  SELECT 32 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 751 AND 800
    AND
    p.score BETWEEN 311 AND 320
  ) AS o ON o.tmpid = 32
INNER JOIN (
  SELECT 32 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 801 AND 850
    AND
    p.score BETWEEN 311 AND 320
  ) AS p ON p.tmpid = 32
INNER JOIN (
  SELECT 32 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 851 AND 900
    AND
    p.score BETWEEN 311 AND 320
  ) AS q ON q.tmpid = 32
INNER JOIN (
  SELECT 32 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 901 AND 950
    AND
    p.score BETWEEN 311 AND 320
  ) AS r ON r.tmpid = 32
INNER JOIN (
  SELECT 32 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 951 AND 1000
    AND
    p.score BETWEEN 311 AND 320
  ) AS s ON s.tmpid = 32
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 1 and 50
  AND
  p.score BETWEEN 311 AND 320
UNION
SELECT 33 AS id, COUNT(*) AS '1 <= MLT <= 50', a.countOf AS '51 <= MLT <= 100', b.countOf AS '101 <= MLT <= 150', c.countOf AS '151 <= MLT <= 200', d.countOf AS '201 <= MLT <= 250', e.countOf AS '251 <= MLT <= 300', f.countOf AS '301 <= MLT <= 350', g.countOf AS '351 <= MLT <= 400', h.countOf AS '401 <= MLT <= 450', i.countOf AS '451 <= MLT <= 500', j.countOf AS '501 <= MLT <= 550', k.countOf AS '551 <= MLT <= 600', l.countOf AS '601 <= MLT <= 650', m.countOf AS '651 <= MLT <= 700', n.countOf AS '701 <= MLT <= 750', o.countOf AS '751 <= MLT <= 800', p.countOf AS '801 <= MLT <= 850', q.countOf AS '851 <= MLT <= 900', r.countOf AS '901 <= MLT <= 950', s.countOf AS '951 <= MLT <= 1000'
FROM posts p
INNER JOIN (
  SELECT 33 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 51 AND 100
    AND
    p.score BETWEEN 321 AND 330
  ) AS a ON a.tmpid = 33
INNER JOIN (
  SELECT 33 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 101 AND 150
    AND
    p.score BETWEEN 321 AND 330
  ) AS b ON b.tmpid = 33
INNER JOIN (
  SELECT 33 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 151 AND 200
    AND
    p.score BETWEEN 321 AND 330
  ) AS c ON c.tmpid = 33
INNER JOIN (
  SELECT 33 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 201 AND 250
    AND
    p.score BETWEEN 321 AND 330
  ) AS d ON d.tmpid = 33
INNER JOIN (
  SELECT 33 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 251 AND 300
    AND
    p.score BETWEEN 321 AND 330
  ) AS e ON e.tmpid = 33
INNER JOIN (
  SELECT 33 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 301 AND 350
    AND
    p.score BETWEEN 321 AND 330
  ) AS f ON f.tmpid = 33
INNER JOIN (
  SELECT 33 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 351 AND 400
    AND
    p.score BETWEEN 321 AND 330
  ) AS g ON g.tmpid = 33
INNER JOIN (
  SELECT 33 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 401 AND 450
    AND
    p.score BETWEEN 321 AND 330
  ) AS h ON h.tmpid = 33
INNER JOIN (
  SELECT 33 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 451 AND 500
    AND
    p.score BETWEEN 321 AND 330
  ) AS i ON i.tmpid = 33
INNER JOIN (
  SELECT 33 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 501 AND 550
    AND
    p.score BETWEEN 321 AND 330
  ) AS j ON j.tmpid = 33
INNER JOIN (
  SELECT 33 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 551 AND 600
    AND
    p.score BETWEEN 321 AND 330
  ) AS k ON k.tmpid = 33
INNER JOIN (
  SELECT 33 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 601 AND 650
    AND
    p.score BETWEEN 321 AND 330
  ) AS l ON l.tmpid = 33
INNER JOIN (
  SELECT 33 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 651 AND 700
    AND
    p.score BETWEEN 321 AND 330
  ) AS m ON m.tmpid = 33
INNER JOIN (
  SELECT 33 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 701 AND 750
    AND
    p.score BETWEEN 321 AND 330
  ) AS n ON n.tmpid = 33
INNER JOIN (
  SELECT 33 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 751 AND 800
    AND
    p.score BETWEEN 321 AND 330
  ) AS o ON o.tmpid = 33
INNER JOIN (
  SELECT 33 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 801 AND 850
    AND
    p.score BETWEEN 321 AND 330
  ) AS p ON p.tmpid = 33
INNER JOIN (
  SELECT 33 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 851 AND 900
    AND
    p.score BETWEEN 321 AND 330
  ) AS q ON q.tmpid = 33
INNER JOIN (
  SELECT 33 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 901 AND 950
    AND
    p.score BETWEEN 321 AND 330
  ) AS r ON r.tmpid = 33
INNER JOIN (
  SELECT 33 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 951 AND 1000
    AND
    p.score BETWEEN 321 AND 330
  ) AS s ON s.tmpid = 33
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 1 and 50
  AND
  p.score BETWEEN 321 AND 330
UNION
SELECT 34 AS id, COUNT(*) AS '1 <= MLT <= 50', a.countOf AS '51 <= MLT <= 100', b.countOf AS '101 <= MLT <= 150', c.countOf AS '151 <= MLT <= 200', d.countOf AS '201 <= MLT <= 250', e.countOf AS '251 <= MLT <= 300', f.countOf AS '301 <= MLT <= 350', g.countOf AS '351 <= MLT <= 400', h.countOf AS '401 <= MLT <= 450', i.countOf AS '451 <= MLT <= 500', j.countOf AS '501 <= MLT <= 550', k.countOf AS '551 <= MLT <= 600', l.countOf AS '601 <= MLT <= 650', m.countOf AS '651 <= MLT <= 700', n.countOf AS '701 <= MLT <= 750', o.countOf AS '751 <= MLT <= 800', p.countOf AS '801 <= MLT <= 850', q.countOf AS '851 <= MLT <= 900', r.countOf AS '901 <= MLT <= 950', s.countOf AS '951 <= MLT <= 1000'
FROM posts p
INNER JOIN (
  SELECT 34 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 51 AND 100
    AND
    p.score BETWEEN 331 AND 340
  ) AS a ON a.tmpid = 34
INNER JOIN (
  SELECT 34 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 101 AND 150
    AND
    p.score BETWEEN 331 AND 340
  ) AS b ON b.tmpid = 34
INNER JOIN (
  SELECT 34 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 151 AND 200
    AND
    p.score BETWEEN 331 AND 340
  ) AS c ON c.tmpid = 34
INNER JOIN (
  SELECT 34 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 201 AND 250
    AND
    p.score BETWEEN 331 AND 340
  ) AS d ON d.tmpid = 34
INNER JOIN (
  SELECT 34 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 251 AND 300
    AND
    p.score BETWEEN 331 AND 340
  ) AS e ON e.tmpid = 34
INNER JOIN (
  SELECT 34 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 301 AND 350
    AND
    p.score BETWEEN 331 AND 340
  ) AS f ON f.tmpid = 34
INNER JOIN (
  SELECT 34 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 351 AND 400
    AND
    p.score BETWEEN 331 AND 340
  ) AS g ON g.tmpid = 34
INNER JOIN (
  SELECT 34 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 401 AND 450
    AND
    p.score BETWEEN 331 AND 340
  ) AS h ON h.tmpid = 34
INNER JOIN (
  SELECT 34 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 451 AND 500
    AND
    p.score BETWEEN 331 AND 340
  ) AS i ON i.tmpid = 34
INNER JOIN (
  SELECT 34 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 501 AND 550
    AND
    p.score BETWEEN 331 AND 340
  ) AS j ON j.tmpid = 34
INNER JOIN (
  SELECT 34 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 551 AND 600
    AND
    p.score BETWEEN 331 AND 340
  ) AS k ON k.tmpid = 34
INNER JOIN (
  SELECT 34 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 601 AND 650
    AND
    p.score BETWEEN 331 AND 340
  ) AS l ON l.tmpid = 34
INNER JOIN (
  SELECT 34 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 651 AND 700
    AND
    p.score BETWEEN 331 AND 340
  ) AS m ON m.tmpid = 34
INNER JOIN (
  SELECT 34 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 701 AND 750
    AND
    p.score BETWEEN 331 AND 340
  ) AS n ON n.tmpid = 34
INNER JOIN (
  SELECT 34 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 751 AND 800
    AND
    p.score BETWEEN 331 AND 340
  ) AS o ON o.tmpid = 34
INNER JOIN (
  SELECT 34 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 801 AND 850
    AND
    p.score BETWEEN 331 AND 340
  ) AS p ON p.tmpid = 34
INNER JOIN (
  SELECT 34 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 851 AND 900
    AND
    p.score BETWEEN 331 AND 340
  ) AS q ON q.tmpid = 34
INNER JOIN (
  SELECT 34 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 901 AND 950
    AND
    p.score BETWEEN 331 AND 340
  ) AS r ON r.tmpid = 34
INNER JOIN (
  SELECT 34 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 951 AND 1000
    AND
    p.score BETWEEN 331 AND 340
  ) AS s ON s.tmpid = 34
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 1 and 50
  AND
  p.score BETWEEN 331 AND 340
UNION
SELECT 35 AS id, COUNT(*) AS '1 <= MLT <= 50', a.countOf AS '51 <= MLT <= 100', b.countOf AS '101 <= MLT <= 150', c.countOf AS '151 <= MLT <= 200', d.countOf AS '201 <= MLT <= 250', e.countOf AS '251 <= MLT <= 300', f.countOf AS '301 <= MLT <= 350', g.countOf AS '351 <= MLT <= 400', h.countOf AS '401 <= MLT <= 450', i.countOf AS '451 <= MLT <= 500', j.countOf AS '501 <= MLT <= 550', k.countOf AS '551 <= MLT <= 600', l.countOf AS '601 <= MLT <= 650', m.countOf AS '651 <= MLT <= 700', n.countOf AS '701 <= MLT <= 750', o.countOf AS '751 <= MLT <= 800', p.countOf AS '801 <= MLT <= 850', q.countOf AS '851 <= MLT <= 900', r.countOf AS '901 <= MLT <= 950', s.countOf AS '951 <= MLT <= 1000'
FROM posts p
INNER JOIN (
  SELECT 35 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 51 AND 100
    AND
    p.score BETWEEN 341 AND 350
  ) AS a ON a.tmpid = 35
INNER JOIN (
  SELECT 35 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 101 AND 150
    AND
    p.score BETWEEN 341 AND 350
  ) AS b ON b.tmpid = 35
INNER JOIN (
  SELECT 35 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 151 AND 200
    AND
    p.score BETWEEN 341 AND 350
  ) AS c ON c.tmpid = 35
INNER JOIN (
  SELECT 35 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 201 AND 250
    AND
    p.score BETWEEN 341 AND 350
  ) AS d ON d.tmpid = 35
INNER JOIN (
  SELECT 35 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 251 AND 300
    AND
    p.score BETWEEN 341 AND 350
  ) AS e ON e.tmpid = 35
INNER JOIN (
  SELECT 35 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 301 AND 350
    AND
    p.score BETWEEN 341 AND 350
  ) AS f ON f.tmpid = 35
INNER JOIN (
  SELECT 35 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 351 AND 400
    AND
    p.score BETWEEN 341 AND 350
  ) AS g ON g.tmpid = 35
INNER JOIN (
  SELECT 35 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 401 AND 450
    AND
    p.score BETWEEN 341 AND 350
  ) AS h ON h.tmpid = 35
INNER JOIN (
  SELECT 35 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 451 AND 500
    AND
    p.score BETWEEN 341 AND 350
  ) AS i ON i.tmpid = 35
INNER JOIN (
  SELECT 35 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 501 AND 550
    AND
    p.score BETWEEN 341 AND 350
  ) AS j ON j.tmpid = 35
INNER JOIN (
  SELECT 35 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 551 AND 600
    AND
    p.score BETWEEN 341 AND 350
  ) AS k ON k.tmpid = 35
INNER JOIN (
  SELECT 35 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 601 AND 650
    AND
    p.score BETWEEN 341 AND 350
  ) AS l ON l.tmpid = 35
INNER JOIN (
  SELECT 35 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 651 AND 700
    AND
    p.score BETWEEN 341 AND 350
  ) AS m ON m.tmpid = 35
INNER JOIN (
  SELECT 35 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 701 AND 750
    AND
    p.score BETWEEN 341 AND 350
  ) AS n ON n.tmpid = 35
INNER JOIN (
  SELECT 35 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 751 AND 800
    AND
    p.score BETWEEN 341 AND 350
  ) AS o ON o.tmpid = 35
INNER JOIN (
  SELECT 35 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 801 AND 850
    AND
    p.score BETWEEN 341 AND 350
  ) AS p ON p.tmpid = 35
INNER JOIN (
  SELECT 35 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 851 AND 900
    AND
    p.score BETWEEN 341 AND 350
  ) AS q ON q.tmpid = 35
INNER JOIN (
  SELECT 35 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 901 AND 950
    AND
    p.score BETWEEN 341 AND 350
  ) AS r ON r.tmpid = 35
INNER JOIN (
  SELECT 35 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 951 AND 1000
    AND
    p.score BETWEEN 341 AND 350
  ) AS s ON s.tmpid = 35
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 1 and 50
  AND
  p.score BETWEEN 341 AND 350
UNION
SELECT 36 AS id, COUNT(*) AS '1 <= MLT <= 50', a.countOf AS '51 <= MLT <= 100', b.countOf AS '101 <= MLT <= 150', c.countOf AS '151 <= MLT <= 200', d.countOf AS '201 <= MLT <= 250', e.countOf AS '251 <= MLT <= 300', f.countOf AS '301 <= MLT <= 350', g.countOf AS '351 <= MLT <= 400', h.countOf AS '401 <= MLT <= 450', i.countOf AS '451 <= MLT <= 500', j.countOf AS '501 <= MLT <= 550', k.countOf AS '551 <= MLT <= 600', l.countOf AS '601 <= MLT <= 650', m.countOf AS '651 <= MLT <= 700', n.countOf AS '701 <= MLT <= 750', o.countOf AS '751 <= MLT <= 800', p.countOf AS '801 <= MLT <= 850', q.countOf AS '851 <= MLT <= 900', r.countOf AS '901 <= MLT <= 950', s.countOf AS '951 <= MLT <= 1000'
FROM posts p
INNER JOIN (
  SELECT 36 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 51 AND 100
    AND
    p.score BETWEEN 351 AND 360
  ) AS a ON a.tmpid = 36
INNER JOIN (
  SELECT 36 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 101 AND 150
    AND
    p.score BETWEEN 351 AND 360
  ) AS b ON b.tmpid = 36
INNER JOIN (
  SELECT 36 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 151 AND 200
    AND
    p.score BETWEEN 351 AND 360
  ) AS c ON c.tmpid = 36
INNER JOIN (
  SELECT 36 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 201 AND 250
    AND
    p.score BETWEEN 351 AND 360
  ) AS d ON d.tmpid = 36
INNER JOIN (
  SELECT 36 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 251 AND 300
    AND
    p.score BETWEEN 351 AND 360
  ) AS e ON e.tmpid = 36
INNER JOIN (
  SELECT 36 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 301 AND 350
    AND
    p.score BETWEEN 351 AND 360
  ) AS f ON f.tmpid = 36
INNER JOIN (
  SELECT 36 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 351 AND 400
    AND
    p.score BETWEEN 351 AND 360
  ) AS g ON g.tmpid = 36
INNER JOIN (
  SELECT 36 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 401 AND 450
    AND
    p.score BETWEEN 351 AND 360
  ) AS h ON h.tmpid = 36
INNER JOIN (
  SELECT 36 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 451 AND 500
    AND
    p.score BETWEEN 351 AND 360
  ) AS i ON i.tmpid = 36
INNER JOIN (
  SELECT 36 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 501 AND 550
    AND
    p.score BETWEEN 351 AND 360
  ) AS j ON j.tmpid = 36
INNER JOIN (
  SELECT 36 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 551 AND 600
    AND
    p.score BETWEEN 351 AND 360
  ) AS k ON k.tmpid = 36
INNER JOIN (
  SELECT 36 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 601 AND 650
    AND
    p.score BETWEEN 351 AND 360
  ) AS l ON l.tmpid = 36
INNER JOIN (
  SELECT 36 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 651 AND 700
    AND
    p.score BETWEEN 351 AND 360
  ) AS m ON m.tmpid = 36
INNER JOIN (
  SELECT 36 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 701 AND 750
    AND
    p.score BETWEEN 351 AND 360
  ) AS n ON n.tmpid = 36
INNER JOIN (
  SELECT 36 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 751 AND 800
    AND
    p.score BETWEEN 351 AND 360
  ) AS o ON o.tmpid = 36
INNER JOIN (
  SELECT 36 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 801 AND 850
    AND
    p.score BETWEEN 351 AND 360
  ) AS p ON p.tmpid = 36
INNER JOIN (
  SELECT 36 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 851 AND 900
    AND
    p.score BETWEEN 351 AND 360
  ) AS q ON q.tmpid = 36
INNER JOIN (
  SELECT 36 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 901 AND 950
    AND
    p.score BETWEEN 351 AND 360
  ) AS r ON r.tmpid = 36
INNER JOIN (
  SELECT 36 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 951 AND 1000
    AND
    p.score BETWEEN 351 AND 360
  ) AS s ON s.tmpid = 36
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 1 and 50
  AND
  p.score BETWEEN 351 AND 360
UNION
SELECT 37 AS id, COUNT(*) AS '1 <= MLT <= 50', a.countOf AS '51 <= MLT <= 100', b.countOf AS '101 <= MLT <= 150', c.countOf AS '151 <= MLT <= 200', d.countOf AS '201 <= MLT <= 250', e.countOf AS '251 <= MLT <= 300', f.countOf AS '301 <= MLT <= 350', g.countOf AS '351 <= MLT <= 400', h.countOf AS '401 <= MLT <= 450', i.countOf AS '451 <= MLT <= 500', j.countOf AS '501 <= MLT <= 550', k.countOf AS '551 <= MLT <= 600', l.countOf AS '601 <= MLT <= 650', m.countOf AS '651 <= MLT <= 700', n.countOf AS '701 <= MLT <= 750', o.countOf AS '751 <= MLT <= 800', p.countOf AS '801 <= MLT <= 850', q.countOf AS '851 <= MLT <= 900', r.countOf AS '901 <= MLT <= 950', s.countOf AS '951 <= MLT <= 1000'
FROM posts p
INNER JOIN (
  SELECT 37 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 51 AND 100
    AND
    p.score BETWEEN 361 AND 370
  ) AS a ON a.tmpid = 37
INNER JOIN (
  SELECT 37 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 101 AND 150
    AND
    p.score BETWEEN 361 AND 370
  ) AS b ON b.tmpid = 37
INNER JOIN (
  SELECT 37 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 151 AND 200
    AND
    p.score BETWEEN 361 AND 370
  ) AS c ON c.tmpid = 37
INNER JOIN (
  SELECT 37 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 201 AND 250
    AND
    p.score BETWEEN 361 AND 370
  ) AS d ON d.tmpid = 37
INNER JOIN (
  SELECT 37 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 251 AND 300
    AND
    p.score BETWEEN 361 AND 370
  ) AS e ON e.tmpid = 37
INNER JOIN (
  SELECT 37 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 301 AND 350
    AND
    p.score BETWEEN 361 AND 370
  ) AS f ON f.tmpid = 37
INNER JOIN (
  SELECT 37 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 351 AND 400
    AND
    p.score BETWEEN 361 AND 370
  ) AS g ON g.tmpid = 37
INNER JOIN (
  SELECT 37 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 401 AND 450
    AND
    p.score BETWEEN 361 AND 370
  ) AS h ON h.tmpid = 37
INNER JOIN (
  SELECT 37 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 451 AND 500
    AND
    p.score BETWEEN 361 AND 370
  ) AS i ON i.tmpid = 37
INNER JOIN (
  SELECT 37 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 501 AND 550
    AND
    p.score BETWEEN 361 AND 370
  ) AS j ON j.tmpid = 37
INNER JOIN (
  SELECT 37 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 551 AND 600
    AND
    p.score BETWEEN 361 AND 370
  ) AS k ON k.tmpid = 37
INNER JOIN (
  SELECT 37 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 601 AND 650
    AND
    p.score BETWEEN 361 AND 370
  ) AS l ON l.tmpid = 37
INNER JOIN (
  SELECT 37 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 651 AND 700
    AND
    p.score BETWEEN 361 AND 370
  ) AS m ON m.tmpid = 37
INNER JOIN (
  SELECT 37 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 701 AND 750
    AND
    p.score BETWEEN 361 AND 370
  ) AS n ON n.tmpid = 37
INNER JOIN (
  SELECT 37 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 751 AND 800
    AND
    p.score BETWEEN 361 AND 370
  ) AS o ON o.tmpid = 37
INNER JOIN (
  SELECT 37 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 801 AND 850
    AND
    p.score BETWEEN 361 AND 370
  ) AS p ON p.tmpid = 37
INNER JOIN (
  SELECT 37 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 851 AND 900
    AND
    p.score BETWEEN 361 AND 370
  ) AS q ON q.tmpid = 37
INNER JOIN (
  SELECT 37 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 901 AND 950
    AND
    p.score BETWEEN 361 AND 370
  ) AS r ON r.tmpid = 37
INNER JOIN (
  SELECT 37 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 951 AND 1000
    AND
    p.score BETWEEN 361 AND 370
  ) AS s ON s.tmpid = 37
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 1 and 50
  AND
  p.score BETWEEN 361 AND 370
UNION
SELECT 38 AS id, COUNT(*) AS '1 <= MLT <= 50', a.countOf AS '51 <= MLT <= 100', b.countOf AS '101 <= MLT <= 150', c.countOf AS '151 <= MLT <= 200', d.countOf AS '201 <= MLT <= 250', e.countOf AS '251 <= MLT <= 300', f.countOf AS '301 <= MLT <= 350', g.countOf AS '351 <= MLT <= 400', h.countOf AS '401 <= MLT <= 450', i.countOf AS '451 <= MLT <= 500', j.countOf AS '501 <= MLT <= 550', k.countOf AS '551 <= MLT <= 600', l.countOf AS '601 <= MLT <= 650', m.countOf AS '651 <= MLT <= 700', n.countOf AS '701 <= MLT <= 750', o.countOf AS '751 <= MLT <= 800', p.countOf AS '801 <= MLT <= 850', q.countOf AS '851 <= MLT <= 900', r.countOf AS '901 <= MLT <= 950', s.countOf AS '951 <= MLT <= 1000'
FROM posts p
INNER JOIN (
  SELECT 38 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 51 AND 100
    AND
    p.score BETWEEN 371 AND 380
  ) AS a ON a.tmpid = 38
INNER JOIN (
  SELECT 38 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 101 AND 150
    AND
    p.score BETWEEN 371 AND 380
  ) AS b ON b.tmpid = 38
INNER JOIN (
  SELECT 38 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 151 AND 200
    AND
    p.score BETWEEN 371 AND 380
  ) AS c ON c.tmpid = 38
INNER JOIN (
  SELECT 38 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 201 AND 250
    AND
    p.score BETWEEN 371 AND 380
  ) AS d ON d.tmpid = 38
INNER JOIN (
  SELECT 38 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 251 AND 300
    AND
    p.score BETWEEN 371 AND 380
  ) AS e ON e.tmpid = 38
INNER JOIN (
  SELECT 38 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 301 AND 350
    AND
    p.score BETWEEN 371 AND 380
  ) AS f ON f.tmpid = 38
INNER JOIN (
  SELECT 38 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 351 AND 400
    AND
    p.score BETWEEN 371 AND 380
  ) AS g ON g.tmpid = 38
INNER JOIN (
  SELECT 38 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 401 AND 450
    AND
    p.score BETWEEN 371 AND 380
  ) AS h ON h.tmpid = 38
INNER JOIN (
  SELECT 38 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 451 AND 500
    AND
    p.score BETWEEN 371 AND 380
  ) AS i ON i.tmpid = 38
INNER JOIN (
  SELECT 38 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 501 AND 550
    AND
    p.score BETWEEN 371 AND 380
  ) AS j ON j.tmpid = 38
INNER JOIN (
  SELECT 38 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 551 AND 600
    AND
    p.score BETWEEN 371 AND 380
  ) AS k ON k.tmpid = 38
INNER JOIN (
  SELECT 38 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 601 AND 650
    AND
    p.score BETWEEN 371 AND 380
  ) AS l ON l.tmpid = 38
INNER JOIN (
  SELECT 38 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 651 AND 700
    AND
    p.score BETWEEN 371 AND 380
  ) AS m ON m.tmpid = 38
INNER JOIN (
  SELECT 38 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 701 AND 750
    AND
    p.score BETWEEN 371 AND 380
  ) AS n ON n.tmpid = 38
INNER JOIN (
  SELECT 38 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 751 AND 800
    AND
    p.score BETWEEN 371 AND 380
  ) AS o ON o.tmpid = 38
INNER JOIN (
  SELECT 38 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 801 AND 850
    AND
    p.score BETWEEN 371 AND 380
  ) AS p ON p.tmpid = 38
INNER JOIN (
  SELECT 38 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 851 AND 900
    AND
    p.score BETWEEN 371 AND 380
  ) AS q ON q.tmpid = 38
INNER JOIN (
  SELECT 38 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 901 AND 950
    AND
    p.score BETWEEN 371 AND 380
  ) AS r ON r.tmpid = 38
INNER JOIN (
  SELECT 38 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 951 AND 1000
    AND
    p.score BETWEEN 371 AND 380
  ) AS s ON s.tmpid = 38
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 1 and 50
  AND
  p.score BETWEEN 371 AND 380
UNION
SELECT 39 AS id, COUNT(*) AS '1 <= MLT <= 50', a.countOf AS '51 <= MLT <= 100', b.countOf AS '101 <= MLT <= 150', c.countOf AS '151 <= MLT <= 200', d.countOf AS '201 <= MLT <= 250', e.countOf AS '251 <= MLT <= 300', f.countOf AS '301 <= MLT <= 350', g.countOf AS '351 <= MLT <= 400', h.countOf AS '401 <= MLT <= 450', i.countOf AS '451 <= MLT <= 500', j.countOf AS '501 <= MLT <= 550', k.countOf AS '551 <= MLT <= 600', l.countOf AS '601 <= MLT <= 650', m.countOf AS '651 <= MLT <= 700', n.countOf AS '701 <= MLT <= 750', o.countOf AS '751 <= MLT <= 800', p.countOf AS '801 <= MLT <= 850', q.countOf AS '851 <= MLT <= 900', r.countOf AS '901 <= MLT <= 950', s.countOf AS '951 <= MLT <= 1000'
FROM posts p
INNER JOIN (
  SELECT 39 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 51 AND 100
    AND
    p.score BETWEEN 381 AND 390
  ) AS a ON a.tmpid = 39
INNER JOIN (
  SELECT 39 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 101 AND 150
    AND
    p.score BETWEEN 381 AND 390
  ) AS b ON b.tmpid = 39
INNER JOIN (
  SELECT 39 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 151 AND 200
    AND
    p.score BETWEEN 381 AND 390
  ) AS c ON c.tmpid = 39
INNER JOIN (
  SELECT 39 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 201 AND 250
    AND
    p.score BETWEEN 381 AND 390
  ) AS d ON d.tmpid = 39
INNER JOIN (
  SELECT 39 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 251 AND 300
    AND
    p.score BETWEEN 381 AND 390
  ) AS e ON e.tmpid = 39
INNER JOIN (
  SELECT 39 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 301 AND 350
    AND
    p.score BETWEEN 381 AND 390
  ) AS f ON f.tmpid = 39
INNER JOIN (
  SELECT 39 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 351 AND 400
    AND
    p.score BETWEEN 381 AND 390
  ) AS g ON g.tmpid = 39
INNER JOIN (
  SELECT 39 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 401 AND 450
    AND
    p.score BETWEEN 381 AND 390
  ) AS h ON h.tmpid = 39
INNER JOIN (
  SELECT 39 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 451 AND 500
    AND
    p.score BETWEEN 381 AND 390
  ) AS i ON i.tmpid = 39
INNER JOIN (
  SELECT 39 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 501 AND 550
    AND
    p.score BETWEEN 381 AND 390
  ) AS j ON j.tmpid = 39
INNER JOIN (
  SELECT 39 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 551 AND 600
    AND
    p.score BETWEEN 381 AND 390
  ) AS k ON k.tmpid = 39
INNER JOIN (
  SELECT 39 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 601 AND 650
    AND
    p.score BETWEEN 381 AND 390
  ) AS l ON l.tmpid = 39
INNER JOIN (
  SELECT 39 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 651 AND 700
    AND
    p.score BETWEEN 381 AND 390
  ) AS m ON m.tmpid = 39
INNER JOIN (
  SELECT 39 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 701 AND 750
    AND
    p.score BETWEEN 381 AND 390
  ) AS n ON n.tmpid = 39
INNER JOIN (
  SELECT 39 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 751 AND 800
    AND
    p.score BETWEEN 381 AND 390
  ) AS o ON o.tmpid = 39
INNER JOIN (
  SELECT 39 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 801 AND 850
    AND
    p.score BETWEEN 381 AND 390
  ) AS p ON p.tmpid = 39
INNER JOIN (
  SELECT 39 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 851 AND 900
    AND
    p.score BETWEEN 381 AND 390
  ) AS q ON q.tmpid = 39
INNER JOIN (
  SELECT 39 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 901 AND 950
    AND
    p.score BETWEEN 381 AND 390
  ) AS r ON r.tmpid = 39
INNER JOIN (
  SELECT 39 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 951 AND 1000
    AND
    p.score BETWEEN 381 AND 390
  ) AS s ON s.tmpid = 39
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 1 and 50
  AND
  p.score BETWEEN 381 AND 390
UNION
SELECT 40 AS id, COUNT(*) AS '1 <= MLT <= 50', a.countOf AS '51 <= MLT <= 100', b.countOf AS '101 <= MLT <= 150', c.countOf AS '151 <= MLT <= 200', d.countOf AS '201 <= MLT <= 250', e.countOf AS '251 <= MLT <= 300', f.countOf AS '301 <= MLT <= 350', g.countOf AS '351 <= MLT <= 400', h.countOf AS '401 <= MLT <= 450', i.countOf AS '451 <= MLT <= 500', j.countOf AS '501 <= MLT <= 550', k.countOf AS '551 <= MLT <= 600', l.countOf AS '601 <= MLT <= 650', m.countOf AS '651 <= MLT <= 700', n.countOf AS '701 <= MLT <= 750', o.countOf AS '751 <= MLT <= 800', p.countOf AS '801 <= MLT <= 850', q.countOf AS '851 <= MLT <= 900', r.countOf AS '901 <= MLT <= 950', s.countOf AS '951 <= MLT <= 1000'
FROM posts p
INNER JOIN (
  SELECT 40 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 51 AND 100
    AND
    p.score BETWEEN 391 AND 400
  ) AS a ON a.tmpid = 40
INNER JOIN (
  SELECT 40 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 101 AND 150
    AND
    p.score BETWEEN 391 AND 400
  ) AS b ON b.tmpid = 40
INNER JOIN (
  SELECT 40 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 151 AND 200
    AND
    p.score BETWEEN 391 AND 400
  ) AS c ON c.tmpid = 40
INNER JOIN (
  SELECT 40 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 201 AND 250
    AND
    p.score BETWEEN 391 AND 400
  ) AS d ON d.tmpid = 40
INNER JOIN (
  SELECT 40 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 251 AND 300
    AND
    p.score BETWEEN 391 AND 400
  ) AS e ON e.tmpid = 40
INNER JOIN (
  SELECT 40 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 301 AND 350
    AND
    p.score BETWEEN 391 AND 400
  ) AS f ON f.tmpid = 40
INNER JOIN (
  SELECT 40 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 351 AND 400
    AND
    p.score BETWEEN 391 AND 400
  ) AS g ON g.tmpid = 40
INNER JOIN (
  SELECT 40 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 401 AND 450
    AND
    p.score BETWEEN 391 AND 400
  ) AS h ON h.tmpid = 40
INNER JOIN (
  SELECT 40 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 451 AND 500
    AND
    p.score BETWEEN 391 AND 400
  ) AS i ON i.tmpid = 40
INNER JOIN (
  SELECT 40 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 501 AND 550
    AND
    p.score BETWEEN 391 AND 400
  ) AS j ON j.tmpid = 40
INNER JOIN (
  SELECT 40 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 551 AND 600
    AND
    p.score BETWEEN 391 AND 400
  ) AS k ON k.tmpid = 40
INNER JOIN (
  SELECT 40 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 601 AND 650
    AND
    p.score BETWEEN 391 AND 400
  ) AS l ON l.tmpid = 40
INNER JOIN (
  SELECT 40 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 651 AND 700
    AND
    p.score BETWEEN 391 AND 400
  ) AS m ON m.tmpid = 40
INNER JOIN (
  SELECT 40 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 701 AND 750
    AND
    p.score BETWEEN 391 AND 400
  ) AS n ON n.tmpid = 40
INNER JOIN (
  SELECT 40 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 751 AND 800
    AND
    p.score BETWEEN 391 AND 400
  ) AS o ON o.tmpid = 40
INNER JOIN (
  SELECT 40 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 801 AND 850
    AND
    p.score BETWEEN 391 AND 400
  ) AS p ON p.tmpid = 40
INNER JOIN (
  SELECT 40 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 851 AND 900
    AND
    p.score BETWEEN 391 AND 400
  ) AS q ON q.tmpid = 40
INNER JOIN (
  SELECT 40 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 901 AND 950
    AND
    p.score BETWEEN 391 AND 400
  ) AS r ON r.tmpid = 40
INNER JOIN (
  SELECT 40 AS tmpid,
  COUNT(*) AS countOf
  FROM posts p
  WHERE
    CHAR_LENGTH(p.content_text) BETWEEN 951 AND 1000
    AND
    p.score BETWEEN 391 AND 400
  ) AS s ON s.tmpid = 40
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 1 and 50
  AND
  p.score BETWEEN 391 AND 400
UNION
SELECT 41 AS id, COUNT(*) AS '1 <= MLT <= 50', a.countOf AS 'MLT < 950', b.countOf AS 'MLT < 950', c.countOf AS 'MLT < 950', d.countOf AS 'MLT < 950', e.countOf AS 'MLT < 950', f.countOf AS 'MLT < 950', g.countOf AS 'MLT < 950', h.countOf AS 'MLT < 950', i.countOf AS 'MLT < 950', j.countOf AS 'MLT < 950', k.countOf AS 'MLT < 950', l.countOf AS 'MLT < 950', m.countOf AS 'MLT < 950', n.countOf AS 'MLT < 950', o.countOf AS 'MLT < 950', p.countOf AS 'MLT < 950', q.countOf AS 'MLT < 950', r.countOf AS 'MLT < 950', s.countOf AS 'MLT < 950'
FROM posts p
INNER JOIN (
SELECT 40 AS tmpid,
COUNT(*) AS countOf
FROM posts p
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 51 AND 100
  AND
  p.score > 400
) AS a ON a.tmpid = 40
INNER JOIN (
SELECT 40 AS tmpid,
COUNT(*) AS countOf
FROM posts p
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 101 AND 150
  AND
  p.score > 400
) AS b ON b.tmpid = 40
INNER JOIN (
SELECT 40 AS tmpid,
COUNT(*) AS countOf
FROM posts p
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 151 AND 200
  AND
  p.score > 400
) AS c ON c.tmpid = 40
INNER JOIN (
SELECT 40 AS tmpid,
COUNT(*) AS countOf
FROM posts p
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 201 AND 250
  AND
  p.score > 400
) AS d ON d.tmpid = 40
INNER JOIN (
SELECT 40 AS tmpid,
COUNT(*) AS countOf
FROM posts p
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 251 AND 300
  AND
  p.score > 400
) AS e ON e.tmpid = 40
INNER JOIN (
SELECT 40 AS tmpid,
COUNT(*) AS countOf
FROM posts p
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 301 AND 350
  AND
  p.score > 400
) AS f ON f.tmpid = 40
INNER JOIN (
SELECT 40 AS tmpid,
COUNT(*) AS countOf
FROM posts p
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 351 AND 400
  AND
  p.score > 400
) AS g ON g.tmpid = 40
INNER JOIN (
SELECT 40 AS tmpid,
COUNT(*) AS countOf
FROM posts p
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 401 AND 450
  AND
  p.score > 400
) AS h ON h.tmpid = 40
INNER JOIN (
SELECT 40 AS tmpid,
COUNT(*) AS countOf
FROM posts p
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 451 AND 500
  AND
  p.score > 400
) AS i ON i.tmpid = 40
INNER JOIN (
SELECT 40 AS tmpid,
COUNT(*) AS countOf
FROM posts p
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 501 AND 550
  AND
  p.score > 400
) AS j ON j.tmpid = 40
INNER JOIN (
SELECT 40 AS tmpid,
COUNT(*) AS countOf
FROM posts p
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 551 AND 600
  AND
  p.score > 400
) AS k ON k.tmpid = 40
INNER JOIN (
SELECT 40 AS tmpid,
COUNT(*) AS countOf
FROM posts p
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 601 AND 650
  AND
  p.score > 400
) AS l ON l.tmpid = 40
INNER JOIN (
SELECT 40 AS tmpid,
COUNT(*) AS countOf
FROM posts p
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 651 AND 700
  AND
  p.score > 400
) AS m ON m.tmpid = 40
INNER JOIN (
SELECT 40 AS tmpid,
COUNT(*) AS countOf
FROM posts p
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 701 AND 750
  AND
  p.score > 400
) AS n ON n.tmpid = 40
INNER JOIN (
SELECT 40 AS tmpid,
COUNT(*) AS countOf
FROM posts p
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 751 AND 800
  AND
  p.score > 400
) AS o ON o.tmpid = 40
INNER JOIN (
SELECT 40 AS tmpid,
COUNT(*) AS countOf
FROM posts p
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 801 AND 850
  AND
  p.score > 400
) AS p ON p.tmpid = 40
INNER JOIN (
SELECT 40 AS tmpid,
COUNT(*) AS countOf
FROM posts p
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 851 AND 900
  AND
  p.score > 400
) AS q ON q.tmpid = 40
INNER JOIN (
SELECT 40 AS tmpid,
COUNT(*) AS countOf
FROM posts p
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 901 AND 950
  AND
  p.score > 400
) AS r ON r.tmpid = 40
INNER JOIN (
SELECT 40 AS tmpid,
COUNT(*) AS countOf
FROM posts p
WHERE
  CHAR_LENGTH(p.content_text) BETWEEN 951 AND 1000
  AND
  p.score > 400
) AS s ON s.tmpid = 40
WHERE
CHAR_LENGTH(p.content_text) BETWEEN 1 and 50
AND
p.score  > 400
INTO OUTFILE '/var/lib/mysql-files/testout.csv'
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
ESCAPED BY '"'
LINES TERMINATED BY '\n';