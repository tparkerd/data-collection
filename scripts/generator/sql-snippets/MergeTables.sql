-- Create new database
CREATE DATABASE mergedDatabase;

-- Create table to hold all of the posts
CREATE TABLE posts LIKE olddb.posts;

-- Insert all of the values into the new database table

INSERT INTO
  collection.posts(
    approved_at_utc,
    approved_by,
    archived,
    author,
    author_flair_css_class,
    author_flair_text,
    banned_at_utc,
    banned_by,
    can_gild,
    can_mod_post,
    created,
    created_utc,
    distinguished,
    downs,
    edited,
    gilded,
    id,
    likes,
    mod_note,
    mod_reason_by,
    mod_reason_title,
    name,
    num_reports,
    permalink,
    removal_reason,
    report_reasons,
    saved,
    score,
    stickied,
    subreddit,
    subreddit_id,
    subreddit_name_prefixed,
    subreddit_type,
    ups,
    num_comments,
    pinned,
    selftext,
    selftext_html,
    title,
    url,
    view_count,
    body,
    depth,
    parent_id,
    content_text,
    submission_type,
    selfbody_text
  )
  SELECT
    approved_at_utc,
    approved_by,
    archived,
    author,
    author_flair_css_class,
    author_flair_text,
    banned_at_utc,
    banned_by,
    can_gild,
    can_mod_post,
    created,
    created_utc,
    distinguished,
    downs,
    edited,
    gilded,
    id,
    likes,
    mod_note,
    mod_reason_by,
    mod_reason_title,
    name,
    num_reports,
    permalink,
    removal_reason,
    report_reasons,
    saved,
    score,
    stickied,
    subreddit,
    subreddit_id,
    subreddit_name_prefixed,
    subreddit_type,
    ups,
    num_comments,
    pinned,
    selftext,
    selftext_html,
    title,
    url,
    view_count,
    body,
    depth,
    parent_id,
    content_text,
    submission_type,
    selfbody_text
  FROM depression_20170101_20180101.posts;


  -- GetMotivated_20160101_20170101
  -- GetMotivated_20170101_20180101
  -- depression_20160101_20170101
  -- depression_20170101_20180101
  -- getting_over_it_20160101_20170101
  -- getting_over_it_20170101_20180101
