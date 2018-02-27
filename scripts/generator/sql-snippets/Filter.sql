-- Filters
-- Minimum of 200 characters in length
-- Text was not deleted
-- Text was not edited
-- At least two people have upvoted the post (score > 2)
-- Post was not stickied

-- Count

SELECT Count(*)
FROM collection.posts p
WHERE CHAR_LENGTH(p.content_text) > 200
  AND p.content_text != '[deleted]'
  AND p.edited < '1970-01-01'
  AND p.score > 2
  AND p.stickied = 0;

-- Copy
SELECT *
FROM collection.posts p
WHERE CHAR_LENGTH(p.content_text) > 200
  AND p.content_text != '[deleted]'
  AND p.edited < '1970-01-01'
  AND p.score > 2;

-- Move from posts into samples
INSERT INTO collection.samples
SELECT *
FROM collection.posts p
WHERE CHAR_LENGTH(p.content_text) > 200
  AND p.content_text != '[deleted]'
  AND p.edited < '1970-01-01'
  AND p.score > 2;
