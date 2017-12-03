# Data Scrapper Test Script
# by Tim Parker
# 2017-11-09
# v0.0.1
# Python3 compatible
#
# Scrape post and top-level comment data from subreddits that may have individuals
# that are likely to suffer from depression or at-risk conditions.

import praw
import configparser
import json
import datetime
import os
import MySQLdb
import re
import time

# Start and end times for the set of queries you want to search
# Time converter: https://www.epochconverter.com/
# START = 1509854400 # 5 Nov 2017 @ 00:00:00 EST
# END = 1510462799 # 11 Nov 2017 @ 23:59:59 EST
START = 1483228800 # 5 Nov 2017 @ 00:00:00 GMT
END = 1514764799 # 11 Nov 2017 @ 23:59:59 GMT

# Subreddits to pull data from
# https://anvaka.github.io/redsim/
# Suggested subreddits similar to r/depression were taken from https://github.com/anvaka/redsim
SUBREDDITS = [ "depression", "suicidewatch", "anxiety", "foreveralone", "offmychest", "socialanxiety", "sanctionedsuicide", "casualconversation", "selfharm", "advice", "adhd", "confession", "amiugly", "bipolar", "bipolarreddit", "stopselfharm", "drugs", "mentalhealth" ]

# Open up the config file and read it's contents
config = configparser.ConfigParser()
config.sections()
config.read('credentials.ini')
host = config['db']['host']
username = config['db']['username']
password = config['db']['password']
database = config['db']['database']

def createTables():
    db = MySQLdb.connect(host, username, password, database)
    cursor = db.cursor()

    cursor.execute("DROP TABLE IF EXISTS comments")
    cursor.execute("DROP TABLE IF EXISTS posts")

    sql = """ CREATE TABLE posts(
                id INTEGER(11) NOT NULL AUTO_INCREMENT,
                created VARCHAR(32),
                created_utc VARCHAR(32),
                domain VARCHAR(64),
                downs INTEGER(11),
                edited VARCHAR(12),
                fullname VARCHAR(128),
                gilded VARCHAR(12),
                hidden VARCHAR(12),
                hide_score VARCHAR(12),
                _id VARCHAR(32),
                is_reddit_media_domain VARCHAR(12),
                is_self VARCHAR(12),
                is_video VARCHAR(12),
                likes INTEGER(11),
                locked VARCHAR(12),
                media VARCHAR(64),
                media_embed VARCHAR(64),
                mod_reports VARCHAR(64),
                name VARCHAR(32),
                num_comments INTEGER(11),
                num_crossposts INTEGER(11),
                num_reports INTEGER(11),
                over_18 VARCHAR(12),
                permalink VARCHAR(128),
                pinned VARCHAR(12),
                quarantine VARCHAR(12),
                removal_reason VARCHAR(64),
                report_reasons VARCHAR(64),
                saved VARCHAR(12),
                score INTEGER(11),
                secure_media VARCHAR(64),
                secure_media_embed VARCHAR(64),
                selftext TEXT(12000),
                shortlink VARCHAR(64),
                subreddit_id VARCHAR(64),
                subreddit_name_prefixed VARCHAR(64),
                subreddit_type VARCHAR(64),
                thumbnail VARCHAR(64),
                title VARCHAR(512),
                ups INTEGER(11),
                url VARCHAR(512),
                user_reports VARCHAR(64),
                view_count INTEGER(11),
                visited VARCHAR(12),
                CONSTRAINT PRIMARY KEY (id));
              """

    cursor.execute(sql)

    sql = """ CREATE TABLE comments(
                id INTEGER(11) NOT NULL AUTO_INCREMENT,
                parent_post INTEGER(11) NOT NULL,
                body TEXT(12000),
                ups VARCHAR(11),
                downs VARCHAR(11),
                CONSTRAINT PRIMARY KEY (id),
                CONSTRAINT FOREIGN KEY (parent_post) REFERENCES posts(id)
                ON DELETE CASCADE
                ON UPDATE CASCADE);"""
    cursor.execute(sql)
    cursor.close()
    db.close()

def insertSubmission(submission):
    data = submission
    query = ("INSERT INTO posts(title, created_utc, domain, downs, ups, edited, fullname, _id, num_comments, score, selftext, subreddit_id, subreddit_name_prefixed, url) VALUES('%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s');" % (re.escape(data.title), data.created_utc, data.domain, data.downs, data.ups, data.edited, data.fullname, data.id, data.num_comments, data.score, re.escape(data.selftext), data.subreddit_id, data.subreddit_name_prefixed, data.url))
    postId = -1

    try:
        db = MySQLdb.connect(host, username, password, database)
        cursor = db.cursor()
        cursor.execute(query)
        postId = db.insert_id()
        db.commit()
    except:
        db.rollback()
    finally:
        cursor.close()
        db.close()
        return postId

def insertComments(submission, postId):
        try:
            db = MySQLdb.connect(host, username, password, database)
            cursor = db.cursor()
            # Get the comments for the entire post
            for c in submission.comments:
                query = (("""INSERT INTO comments(parent_post, body, ups, downs) VALUES ('%s', '%s', '%s', '%s');""") % (postId, c.body, c.ups, c.downs))
                cursor.execute(query)
            db.commit()
        except:
            db.rollback()
        finally:
            cursor.close()
            db.close()

def search(sub):
    # begin = 1483228800; ## Jan 1, 2017 @ 00:00:00 UTC
    # END = begin + 3600 ## increment by 1 hour
    i = START
    while (i < END):
        s = i
        e = i + (18000) # 5 hours
        query = 'timestamp:%s..%s' % (s, e)
        search_results = sub.search(query, syntax='cloudsearch')
        for post in search_results:
            print(post.subreddit_name_prefixed + ': ' + post.title)
            postId = insertSubmission(post)
            if not postId == -1:
                insertComments(post, postId)
        i = i + (18000) # 5 hours
        time.sleep(2)

def init():
    # Create an instance of Reddit with OAuth2
    reddit = praw.Reddit(client_id = config['User']['id'],
                         client_secret = config['User']['secret'],
                         redirect_uri = config['User']['uri'],
                         user_agent = config['User']['user_agent'])
    return reddit

def main():
    reddit = init()
    createTable()
    for sub in SUBREDDITS:
        search(reddit.subreddit(sub))


# createTables()
main()
