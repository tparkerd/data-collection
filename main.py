# Data Scrapper Test Script
# by Tim Parker
# 2017-11-09
# v0.0.1
# Python3 compatible
#
# Scrape post and top-level comment data from subreddits that may have individuals
# that are likely to suffer from depression or at-risk conditions.

import praw
from praw.models import MoreComments
import configparser
import json
import datetime
import os
import MySQLdb
import re
import time
import sys

# Start and end times for the set of queries you want to search
# Time converter: https://www.epochconverter.com/
# START = 1509854400 # 5 Nov 2017 @ 00:00:00 EST
# END = 1510462799 # 11 Nov 2017 @ 23:59:59 EST
START = 1483246800 # Sunday, January 1, 2017 12:00:00 AM EST
END = 1514782800 # Monday, January 1, 2018 12:00:00 AM EST
# END = 1451642400 # Monday, January 1, 2017 12:00:00 AM EST
postcount = 0

# Subreddits to pull data from
# https://anvaka.github.io/redsim/
# Suggested subreddits similar to r/depression were taken from https://github.com/anvaka/redsim
SUBREDDITS = [ "depression", "suicidewatch", "anxiety", "foreveralone", "offmychest", "socialanxiety", "sanctionedsuicide", "casualconversation", "selfharm", "advice", "adhd", "confession", "amiugly", "bipolar", "bipolarreddit", "stopselfharm", "drugs", "mentalhealth" ]
SUBREDDITS = [ "depression", "suicidewatch", "anxiety", "foreveralone", "offmychest", "socialanxiety", "sanctionedsuicide", "selfharm", "confession", "bipolar", "bipolarreddit", "stopselfharm", "mentalhealth" ]
SUBREDDITS = [ "depression" ]

# Open up the config file and read it's contents
config = configparser.ConfigParser()
config.sections()
config.read('credentials.ini')
host = config['db']['host']
username = config['db']['username']
password = config['db']['password']
database = config['db']['name']

# Name of columns in the table
FIELDS = ['approved_at_utc',
 'approved_by',
 'archived',
 'author',
 'author_flair_css_class',
 'author_flair_text',
 'banned_at_utc',
 'banned_by',
 'can_gild',
 'can_mod_post',
 'created',
 'created_utc',
 'distinguished',
 'downs',
 'edited',
 'gilded',
 'id',
 'likes',
 'mod_note',
 'mod_reason_by',
 'mod_reason_title',
 'name',
 'num_reports',
 'permalink',
 'removal_reason',
 'report_reasons',
 'saved',
 'score',
 'stickied',
 'subreddit',
 'subreddit_id',
 'subreddit_name_prefixed',
 'subreddit_type',
 'ups',
 'num_comments',
 'pinned',
 'selftext',
 'selftext_html',
 'title',
 'url',
 'view_count',
 'body',
 'depth',
 'parent_id',
 'content_text',
 'submission_type']

# Build query string
def buildQueryString(fields, values):
    sql = """INSERT INTO posts"""
    cFields = len(fields)

    # Convert strings to be actual strings in the query text
    stringFields = ['approved_by',
        'author',
        'author_flair_css_class',
        'author_flair_text',
        'banned_by',
        'distinguished',
        'id',
        'mod_note',
        'mod_reason_by',
        'mod_reason_title',
        'name',
        'permalink',
        'removal_reason',
        'report_reasons',
        'subreddit',
        'subreddit_id',
        'subreddit_name_prefixed',
        'subreddit_type',
        'selftext',
        'selftext_html',
        'title',
        'url',
        'body',
        'parent_id',
        'content_text',
        'submission_type'
    ]

    # For each value, see if it's a string
    for n, i in enumerate(fields):
        if values[n] != 'null' and i in stringFields:
            values[n] = ''.join(['\'', values[n], '\''])

    fields = ', '.join(''.join(['`', field, '`']) for field in fields) + ')'
    values = ', '.join(values)
    sql = ''.join([sql, '(', fields, ' VALUES(', values, ')'])
    return sql

def createTables():
    db = MySQLdb.connect(host, username, password, database)
    cursor = db.cursor()
    cursor.execute("DROP TABLE IF EXISTS posts")

    sql = """ CREATE TABLE posts(
                    _id INTEGER(11) NOT NULL AUTO_INCREMENT,
                    approved_at_utc DATETIME,
                    approved_by VARCHAR(64),
                    archived BOOLEAN,
                    author VARCHAR(64),
                    author_flair_css_class VARCHAR(64),
                    author_flair_text VARCHAR(64),
                    banned_at_utc DATETIME,
                    banned_by VARCHAR(64),
                    can_gild BOOLEAN,
                    can_mod_post BOOLEAN,
                    created DATETIME,
                    created_utc DATETIME,
                    distinguished VARCHAR(32),
                    downs INTEGER(11),
                    edited BOOLEAN,
                    gilded BOOLEAN,
                    id VARCHAR(64),
                    likes INTEGER(11),
                    mod_note VARCHAR(64),
                    mod_reason_by VARCHAR(64),
                    mod_reason_title VARCHAR(64),
                    name VARCHAR(64),
                    num_reports INTEGER(11),
                    permalink VARCHAR(128),
                    removal_reason VARCHAR(128),
                    report_reasons VARCHAR(64),
                    saved BOOLEAN,
                    score INTEGER(11),
                    stickied BOOLEAN,
                    subreddit VARCHAR(64),
                    subreddit_id VARCHAR(64),
                    subreddit_name_prefixed VARCHAR(64),
                    subreddit_type VARCHAR(64),
                    ups INTEGER(11),

                    num_comments INTEGER(11),
                    pinned BOOLEAN,
                    selftext TEXT(12000),
                    selftext_html TEXT(12000),
                    title VARCHAR(512),
                    url VARCHAR(512),
                    view_count INTEGER(11),

                    body TEXT(12000),
                    depth INTEGER(11),
                    parent_id VARCHAR(64),

                    content_text TEXT(12000),
                    submission_type VARCHAR(35),
                    CONSTRAINT PRIMARY KEY (_id)
                ) ENGINE = INNODB
              """

    cursor.execute(sql)
    cursor.close()
    db.close()

def insertSubmission(submission):
    global postcount
    data = {}

    # Clear out None values and assume null
    for attr, value in submission.__dict__.items():
        data[attr] = str(value)
        if value is None:
            data[attr] = 'null'



    if ((submission.author) is not None):
        data['author'] = re.escape(submission.author.name)
    if ((submission.author_flair_css_class) is not None):
        data['author_flair_css_class'] = re.escape(submission.author_flair_css_class)
    if ((submission.author_flair_text) is not None):
        data['author_flair_text'] = re.escape(submission.author_flair_text)
    if ((submission.distinguished) is not None):
        data['distinguished'] = re.escape(submission.distinguished)


    data['submission_type'] = type(submission).__name__
    if type(submission).__name__ is 'Submission':
        if submission.selftext_html is None:
            submission.selftext_html = 'null'
        if submission.selftext is None:
            submission.selftext = 'null'
        if submission.title is None:
            submission.title = 'null'
        data['body'] = 'null'
        data['depth'] = 'null'
        data['parent_id'] = 'null'
        data['selftext'] = re.escape(submission.selftext)
        data['selftext_html'] = re.escape(submission.selftext_html)
        data['content_text'] = re.escape(submission.selftext)
        data['title'] = re.escape(submission.title)


    if type(submission).__name__ is 'Comment':
        data['selftext'] = 'null'
        data['selftext_html'] = 'null'
        if submission.body is None:
            submission.body = 'null'
        data['content_text'] = re.escape(submission.body)
        data['body'] = re.escape(submission.body)
        data['num_comments'] = 'null'
        data['pinned'] = 'null'
        data['title'] = 'null'
        data['url'] = 'null'
        data['view_count'] = 'null'

    data['permalink'] = 'https://www.reddit.com' + submission.permalink

    # Skip deleted text
    if data['content_text'] == '[deleted]':
        return

    postcount = postcount + 1
    print(str(postcount) + ') ' + type(submission).__name__ + '\t' + data['permalink'])

    values = [
        ''.join([ 'FROM_UNIXTIME(', data['approved_at_utc'], ')']),
        data['approved_by'],
        data['archived'],
        data['author'],
        data['author_flair_css_class'],
        data['author_flair_text'],
        ''.join([ 'FROM_UNIXTIME(', data['banned_at_utc'], ')']),
        data['banned_by'],
        data['can_gild'],
        data['can_mod_post'],
        ''.join([ 'FROM_UNIXTIME(', data['created'], ')']),
        ''.join([ 'FROM_UNIXTIME(', data['created_utc'], ')']),
        data['distinguished'],
        data['downs'],
        data['edited'],
        data['gilded'],
        data['id'],
        data['likes'],
        data['mod_note'],
        data['mod_reason_by'],
        data['mod_reason_title'],
        data['name'],
        data['num_reports'],
        data['permalink'],
        data['removal_reason'],
        data['report_reasons'],
        data['saved'],
        data['score'],
        data['stickied'],
        data['subreddit'],
        data['subreddit_id'],
        data['subreddit_name_prefixed'],
        data['subreddit_type'],
        data['ups'],
        data['num_comments'],
        data['pinned'],
        data['selftext'],
        data['selftext_html'],
        data['title'],
        data['url'],
        data['view_count'],
        data['body'],
        data['depth'],
        data['parent_id'],
        data['content_text'],
        data['submission_type']
    ]
    sql = buildQueryString(FIELDS, values)

    try:
        db = MySQLdb.connect(host, username, password, database)
        cursor = db.cursor()
        cursor.execute(sql)
        db.commit()
    except:
        print('SQL Error occurred')
        with open("error.log", "a") as logFile:
            logFile.write(sql + "\n")
        db.rollback()
    finally:
        cursor.close()
        db.close()

def search(sub):
    global postcount
    i = START
    print
    while (i < END):
        s = i
        e = i + (18000) # 5 hours
        query = 'timestamp:%s..%s' % (s, e)
        search_results = sub.search(query, syntax='cloudsearch')
        for post in search_results:
            insertSubmission(post)
            for top_level_comment in post.comments:
                if isinstance(top_level_comment, MoreComments):
                    continue
                insertSubmission(top_level_comment)
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
    createTables()
    for sub in SUBREDDITS:
        search(reddit.subreddit(sub))

main()
