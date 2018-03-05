SELECT
    COUNT(v.id),
    AVG(v.compound),
    AVG(v.neg),
    AVG(v.pos),
    AVG(v.neu)
FROM
    collection.vader v
WHERE
    CHAR_LENGTH(v.content_text) < 4000
        AND v.compound > 0.5
UNION SELECT
    COUNT(v.id),
    AVG(v.compound),
    AVG(v.neg),
    AVG(v.pos),
    AVG(v.neu)
FROM
    collection.vader v
WHERE
    CHAR_LENGTH(v.content_text) < 4000
        AND v.compound < - 0.5
UNION SELECT
    COUNT(v.id),
    AVG(v.compound),
    AVG(v.neg),
    AVG(v.pos),
    AVG(v.neu)
FROM
    collection.vader v
WHERE
    CHAR_LENGTH(v.content_text) < 4000
        AND v.compound >= - 0.5
        AND v.compound <= 0.5;
