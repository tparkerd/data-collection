SELECT AVG(CHAR_LENGTH(v.content_text)) AS `avg or count`, AVG(v.compound) AS avgSentiment
FROM
    collection.vader v
UNION
SELECT COUNT(*), AVG(v.compound) AS avgSentiment FROM collection.vader v
WHERE CHAR_LENGTH(v.content_text) > 1035
UNION
SELECT COUNT(*), AVG(v.compound) AS avgSentiment FROM collection.vader v
WHERE CHAR_LENGTH(v.content_text) < 1035;