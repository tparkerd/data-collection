SELECT Count(*)
FROM   getmotivated_20160101_20170101.posts
UNION
SELECT Count(*)
FROM   getmotivated_20170101_20180101.posts
UNION
SELECT Count(*)
FROM   depression_20160101_20170101.posts
UNION
SELECT Count(*)
FROM   depression_20170101_20180101.posts
UNION
SELECT Count(*)
FROM   getting_over_it_20160101_20170101.posts
UNION
SELECT Count(*)
FROM   getting_over_it_20170101_20180101.posts; 
