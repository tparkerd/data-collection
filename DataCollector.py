#!/usr/bin/python3
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
import argparse
import os
import MySQLdb
import re
import time
import sys
from datetime import datetime
import time

class DataCollector:
    # Global post counter
    postcount = 0
    errorcount = 0
    host = ''
    username = ''
    password = ''

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
     'submission_type',
     'selfbody_text']

    # Build query string
    def buildQueryString(self, fields, values):
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
            'submission_type',
            'selfbody_text'
        ]

        # For each value, see if it's a string
        for n, i in enumerate(fields):
            if values[n] != 'null' and i in stringFields:
                values[n] = ''.join(['\'', values[n], '\''])

        fields = ', '.join(''.join(['`', field, '`']) for field in fields) + ')'
        values = ', '.join(values)
        sql = ''.join([sql, '(', fields, ' VALUES(', values, ')'])
        return sql

    def createTables(self):
        db = MySQLdb.connect(self.host, self.username, self.password)

        # Fix: encoding error for non-latin characters
        db.set_character_set('utf8mb4')
        cursor = db.cursor()
        cursor.execute('SET NAMES utf8;')
        cursor.execute('SET CHARACTER SET utf8;')
        cursor.execute('SET character_set_connection=utf8;')
        # end fix

        cursor.execute("DROP DATABASE IF EXISTS {}".format(self.database))
        cursor.execute("CREATE DATABASE IF NOT EXISTS {} CHARACTER SET utf8mb4".format(self.database))
        cursor.execute("USE {}".format(self.database))

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
                        edited DATETIME,
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
                        selfbody_text TEXT(12000),
                        CONSTRAINT PRIMARY KEY (_id)
                    ) ENGINE = INNODB
                  """

        cursor.execute(sql)
        cursor.close()
        db.close()

    def insertSubmission(self, submission):
        data = {}

        # Clear out None values and assume null
        for attr, value in submission.__dict__.items():
            if value is None:
                data[attr] = 'null'
            else:
                data[attr] = str(value)


        # Escape universal values
        if ((submission.author) is not None):
            data['author'] = re.escape(submission.author.name)
        if ((submission.author_flair_css_class) is not None):
            data['author_flair_css_class'] = re.escape(submission.author_flair_css_class)
        if ((submission.author_flair_text) is not None):
            data['author_flair_text'] = re.escape(submission.author_flair_text)
        if ((submission.distinguished) is not None):
            data['distinguished'] = re.escape(submission.distinguished)

        # Catch edit field that has datatime instead of boolean value
        if ((submission.edited) is not None):
            if (submission.edited == False):
                submission.edited = 'null'

        # Escape and 'zero-out' values for submissions
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
            data['content_text'] = re.escape(submission.title) + '. ' + re.escape(submission.selftext)
            data['selfbody_text'] = re.escape(submission.selftext)
            data['title'] = re.escape(submission.title)

        # Escape and 'zero-out' values for comments
        if type(submission).__name__ is 'Comment':
            data['selftext'] = 'null'
            data['selftext_html'] = 'null'
            if submission.body is None:
                submission.body = 'null'
            data['content_text'] = re.escape(submission.body)
            data['body'] = re.escape(submission.body)
            data['selfbody_text'] = re.escape(submission.body)
            data['num_comments'] = 'null'
            data['pinned'] = 'null'
            data['title'] = 'null'
            data['url'] = 'null'
            data['view_count'] = 'null'

        data['permalink'] = 'https://www.reddit.com' + submission.permalink

        # Skip deleted text
        if data['content_text'] == '[deleted]' or data['selftext'] == '[deleted]':
            return

        # Increment the number of posts that have been counted
        self.postcount = self.postcount + 1
        print(str(self.postcount) + ') ' + type(submission).__name__ + '\t' + data['permalink'])

        # Parse values and set values
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
            ''.join([ 'FROM_UNIXTIME(', data['edited'], ')']),
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
            data['submission_type'],
            data['selfbody_text']
        ]
        # Construct the SQL query as a string
        sql = self.buildQueryString(self.FIELDS, values)

        # Attempt to run query
        db = MySQLdb.connect(self.host, self.username, self.password, self.database)
        # Fix: encoding error for non-latin characters
        db.set_character_set('utf8mb4')
        cursor = db.cursor()
        cursor.execute('SET NAMES utf8;')
        cursor.execute('SET CHARACTER SET utf8;')
        cursor.execute('SET character_set_connection=utf8;')
        # end fix
        try:
            cursor.execute(sql)
            db.commit()
        except Exception as e:
            self.postcount = self.postcount - 1 # error occurred so reduce the number of valid posts
            print('SQL Error occurred')
            self.errorcount = self.errorcount + 1
            with open("faultySQL.log", "a") as sqlLog:
                sqlLog.write(sql + "\n")
            with open("error.log", "a") as errorLog:
                errorLog.write(str(e) + "\n")
            db.rollback()
        finally:
            cursor.close()
            db.close()

    def search(self, subreddit, start, end):
        i = start
        while (i < end):
            s = i
            e = i + (18000) # +5 hours
            query = 'timestamp:{}..{}'.format(s, e)
            search_results = subreddit.search(query, syntax='cloudsearch')
            for post in search_results:
                self.insertSubmission(post)
                for top_level_comment in post.comments:
                    if isinstance(top_level_comment, MoreComments):
                        continue
                    self.insertSubmission(top_level_comment)
            i = i + (18000) # 5 hours
            time.sleep(2)

    def init(self):
        # Open up the config file and read it's contents
        config = configparser.ConfigParser()
        config.sections()
        config.read('../cfg/credentials.ini')

        # Create an instance of Reddit with OAuth2
        reddit = praw.Reddit(client_id = config['User']['id'],
                             client_secret = config['User']['secret'],
                             redirect_uri = config['User']['uri'],
                             user_agent = config['User']['user_agent'])
        return reddit

    def main(self, args):
        reddit = self.init()
        config = configparser.ConfigParser()
        config.sections()
        config.read('../cfg/credentials.ini')
        self.host = config['db']['host']
        self.username = config['db']['username']
        self.password = config['db']['password']
        self.database = args.database
        self.createTables()
        for sub in args.subreddits:
            self.search(reddit.subreddit(sub), args.start, args.end)

        print('Error rate: ' , self.errorcount / self.postcount * 100.0)

epoch = datetime.utcfromtimestamp(0)
def unix_time_int(dt):
    return int((datetime.strptime(dt, '%Y-%m-%d') - epoch).total_seconds())

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='Pulls down submissions from Reddit using PRAW')
    parser.add_argument('-db', dest='database', type=str, default=None, help='Specify database name. Default: first subreddit_start date_end_time')
    parser.add_argument('-sub', dest='subreddits', required=True, type=str, default=None, nargs='*', help='Specify subreddit(s) by name to parse.')
    parser.add_argument('-start', dest='start', required=True, type=str, default=None, help='Format: YYYY-MM-DD. Starting date to begin search. Inclusive.')
    parser.add_argument('-end', dest='end', type=str, default=datetime.now().strftime('%Y-%m-%d'), help='Format: YYYY-MM-DD. Ending date to finish search. Exclusive.')
    args = parser.parse_args()
    if args.database is None:
        args.database = args.subreddits[0] + '_' + args.start + '_' + args.end
        args.database = args.database.replace('-', '', 4)
    args.start = unix_time_int(args.start)
    args.end = unix_time_int(args.end)
    DataCollector().main(args)
