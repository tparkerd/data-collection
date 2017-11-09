# Data Scrapper Test Script
# by Tim Parker
# 2017-11-03
#
# Scrape post and comment data from subreddits that may have individuals
# that are likely to suffer from depression or at-risk conditions.
# Current functionality: Reads the newest 100 posts to /r/SuicideWatch
# TODO(timp): https://www.reddit.com/dev/api#GET_search
#             Somehow to a normal query to get the JSON data directly
#             from the search. Have to make sure to specify that the
#             syntax=cloudsearch so timestamp=UNIXDATETIME can be used
#

import praw
import configparser
import json
import datetime
import os
import MySQLdb
import re


def parseData(submission):
    tmp = {}
    tmp['_comments_by_id'] = submission._comments_by_id
    tmp['_fetched'] = submission._fetched
    tmp['_flair'] = submission._flair
    tmp['_info_params'] = submission._info_params
    tmp['_mod'] = submission._mod
    tmp['approved_at_utc'] = submission.approved_at_utc
    tmp['approved_by'] = submission.approved_by
    tmp['archived'] = submission.archived
    tmp['author_flair_css_class'] = submission.author_flair_css_class
    tmp['author_flair_text'] = submission.author_flair_text
    tmp['banned_at_utc'] = submission.banned_at_utc
    tmp['banned_by'] = submission.banned_by
    tmp['brand_safe'] = submission.brand_safe
    tmp['can_gild'] = submission.can_gild
    tmp['can_mod_post'] = submission.can_mod_post
    tmp['clicked'] = submission.clicked
    tmp['comment_limit'] = submission.comment_limit
    tmp['comment_sort'] = submission.comment_sort
    tmp['contest_mode'] = submission.contest_mode
    tmp['created'] = submission.created
    tmp['created_utc'] = submission.created_utc
    tmp['distinguished'] = submission.distinguished
    tmp['domain'] = submission.domain
    tmp['downs'] = submission.downs
    tmp['edited'] = submission.edited
    tmp['fullname'] = submission.fullname
    tmp['gilded'] = submission.gilded
    tmp['hidden'] = submission.hidden
    tmp['hide_score'] = submission.hide_score
    tmp['id'] = submission.id
    tmp['is_crosspostable'] = submission.is_crosspostable
    tmp['is_reddit_media_domain'] = submission.is_reddit_media_domain
    tmp['is_self'] = submission.is_self
    tmp['is_video'] = submission.is_video
    tmp['likes'] = submission.likes
    tmp['link_flair_css_class'] = submission.link_flair_css_class
    tmp['link_flair_text'] = submission.link_flair_text
    tmp['locked'] = submission.locked
    tmp['media'] = submission.media
    tmp['media_embed'] = submission.media_embed
    tmp['mod_reports'] = submission.mod_reports
    tmp['name'] = submission.name
    tmp['num_comments'] = submission.num_comments
    tmp['num_crossposts'] = submission.num_crossposts
    tmp['num_reports'] = submission.num_reports
    tmp['over_18'] = submission.over_18
    tmp['parent_whitelist_status'] = submission.parent_whitelist_status
    tmp['permalink'] = submission.permalink
    tmp['pinned'] = submission.pinned
    tmp['quarantine'] = submission.quarantine
    tmp['removal_reason'] = submission.removal_reason
    tmp['report_reasons'] = submission.report_reasons
    tmp['saved'] = submission.saved
    tmp['score'] = submission.score
    tmp['secure_media'] = submission.secure_media
    tmp['secure_media_embed'] = submission.secure_media_embed
    tmp['selftext'] = submission.selftext
    tmp['selftext_html'] = submission.selftext_html
    tmp['shortlink'] = submission.shortlink
    tmp['spoiler'] = submission.spoiler
    tmp['subreddit_id'] = submission.subreddit_id
    tmp['subreddit_name_prefixed'] = submission.subreddit_name_prefixed
    tmp['subreddit_type'] = submission.subreddit_type
    tmp['suggested_sort'] = submission.suggested_sort
    tmp['thumbnail'] = submission.thumbnail
    tmp['title'] = submission.title
    tmp['ups'] = submission.ups
    tmp['url'] = submission.url
    tmp['user_reports'] = submission.user_reports
    tmp['view_count'] = submission.view_count
    tmp['visited'] = submission.visited
    tmp['whitelist_status'] = submission.whitelist_status
    tmp['comments'] = []
    for comment in submission.comments:
        if comment.ups > 0:
            tmp['comments'].append(comment.body)
    return tmp

def createTable():
    db = MySQLdb.connect("localhost","root","admin","reddit")
    cursor = db.cursor()

    cursor.execute("DROP TABLE IF EXISTS myTable")

    sql = """ CREATE TABLE myTable(
                id INTEGER(11) NOT NULL AUTO_INCREMENT,
                created VARCHAR(32),
                created_utc VARCHAR(32),
                domain VARCHAR(64),
                downs VARCHAR(11),
                edited VARCHAR(12),
                fullname VARCHAR(128),
                gilded VARCHAR(12),
                hidden VARCHAR(12),
                hide_score VARCHAR(12),
                _id VARCHAR(32),
                is_reddit_media_domain VARCHAR(12),
                is_self VARCHAR(12),
                is_video VARCHAR(12),
                likes VARCHAR(11),
                locked VARCHAR(12),
                media VARCHAR(64),
                media_embed VARCHAR(64),
                mod_reports VARCHAR(64),
                name VARCHAR(32),
                num_comments VARCHAR(11),
                num_crossposts VARCHAR(11),
                num_reports VARCHAR(11),
                over_18 VARCHAR(12),
                permalink VARCHAR(64),
                pinned VARCHAR(12),
                quarantine VARCHAR(12),
                removal_reason VARCHAR(64),
                report_reasons VARCHAR(64),
                saved VARCHAR(12),
                score VARCHAR(11),
                secure_media VARCHAR(64),
                secure_media_embed VARCHAR(64),
                selftext TEXT(12000),
                shortlink VARCHAR(64),
                spoiler VARCHAR(12),
                subreddit_id VARCHAR(64),
                subreddit_name_prefixed VARCHAR(64),
                subreddit_type VARCHAR(64),
                thumbnail VARCHAR(64),
                title VARCHAR(512),
                ups VARCHAR(11),
                url VARCHAR(512),
                user_reports VARCHAR(64),
                view_count VARCHAR(11),
                visited VARCHAR(12),
                CONSTRAINT PRIMARY KEY (id));
              """
    # sql = """ CREATE TABLE myTable(
    #             id INTEGER(11) NOT NULL AUTO_INCREMENT,
    #             created VARCHAR(32),
    #             created_utc VARCHAR(32),
    #             domain VARCHAR(64),
    #             downs INTEGER(11),
    #             edited BOOLEAN,
    #             fullname VARCHAR(128),
    #             gilded BOOLEAN,
    #             hidden BOOLEAN,
    #             hide_score BOOLEAN,
    #             _id VARCHAR(32),
    #             is_reddit_media_domain BOOLEAN,
    #             is_self BOOLEAN,
    #             is_video BOOLEAN,
    #             likes INTEGER(11),
    #             locked BOOLEAN,
    #             media VARCHAR(64),
    #             media_embed VARCHAR(64),
    #             mod_reports VARCHAR(64),
    #             name VARCHAR(32),
    #             num_comments INTEGER(11),
    #             num_crossposts INTEGER(11),
    #             num_reports INTEGER(11),
    #             over_18 BOOLEAN,
    #             permalink VARCHAR(64),
    #             pinned BOOLEAN,
    #             quarantine BOOLEAN,
    #             removal_reason VARCHAR(64),
    #             report_reasons VARCHAR(64),
    #             saved BOOLEAN,
    #             score INTEGER(11),
    #             secure_media VARCHAR(64),
    #             secure_media_embed VARCHAR(64),
    #             selftext VARCHAR(1024),
    #             shortlink VARCHAR(64),
    #             spoiler BOOLEAN,
    #             subreddit_id VARCHAR(64),
    #             subreddit_name_prefixed VARCHAR(64),
    #             subreddit_type VARCHAR(64),
    #             thumbnail VARCHAR(64),
    #             title VARCHAR(512),
    #             ups INTEGER(11),
    #             url VARCHAR(128),
    #             user_reports VARCHAR(64),
    #             view_count INTEGER(11),
    #             visited BOOLEAN,
    #             CONSTRAINT PRIMARY KEY (id));
    #           """


    cursor.execute(sql)
    cursor.close()
    db.close()

def insertSubmission(submission):

    # StackOverflow example
    # # data = {...}
    # columns = ', '.join(data.keys())
    # format = ', '.join(['%s'] * len(data))
    # query = "INSERT INTO title (%s) VALUES (%s)" % (columns, format)
    # cursor.execute(query, data.values())

    data = submission
    comments = "TODO"
    query = ("INSERT INTO myTable(title, created_utc, domain, downs, ups, edited, fullname, _id, likes, num_comments, score, selftext, subreddit_id, subreddit_name_prefixed, url, view_count) VALUES('%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s');" % (re.escape(data.title), data.created_utc, data.domain, data.downs, data.ups, data.edited, data.fullname, data.id, data.likes, data.num_comments, data.score, re.escape(data.selftext), data.subreddit_id, data.subreddit_name_prefixed, data.url, data.view_count))

    try:
        db = MySQLdb.connect("localhost","root","admin","reddit")
        cursor = db.cursor()
        cursor.execute(query)
        db.commit()
    except:
        db.rollback()
    finally:
        cursor.close()
        db.close()

def parseSubreddit(str, reddit):
    # This is intended to show how get the json info returned from reddit directly
    # but I cannot seem to get it to work
    # reddit.config.store_json_result = True
    subreddit = reddit.subreddit(str)
    posts = subreddit.new(limit=100)
    output = { "data": [] }
    for submission in posts:
        if not submission.stickied:
            # tmp = parseData(submission)
            # output['data'].append((tmp))
            insertSubmission(submission)
    # if not os.path.exists('output'):
    #     os.makedirs('output')
    # if not os.path.exists('output/' + str):
    #     os.makedirs('output/' + str)
    # fileLocation = os.path.join('output', str, datetime.datetime.now().strftime('%Y-%m-%d %H:%M.json'))
    # with open(fileLocation, 'a') as f:
    # # f = open(fileLocation, 'w+') # Open up output file
    #     f.write(json.dumps(output, sort_keys = True, indent = 2))
    # print(fileLocation + ' was created.')

# Now: 1510251409
def foo(str, r):
    # print(dir(r))
    # print(dir(r.post))
    # print(dir(r.subreddit(str).search))
    # begin = 1483228800; ## Jan 1, 2017 @ 00:00:00 UTC
    # end = begin + 1800 ## increment by 30 mins
    search_results = r.subreddit(str).search('timestamp:1509508800..1510290000', syntax='cloudsearch')
    for post in search_results:
        # print(dir(post))
        print(post.title)

def main():
    # Open up the config file and read it's contents
    config = configparser.ConfigParser()
    config.sections()
    config.read('credentials.ini')
    # Create an instance of Reddit with OAuth2
    red = praw.Reddit(client_id = config['User']['id'],
                         client_secret = config['User']['secret'],
                         redirect_uri = config['User']['uri'],
                         user_agent = config['User']['user_agent'])
    subreddits = [ "depression", "suicidewatch", "anxiety", "foreveralone", "offmychest", "socialanxiety", "sanctionedsuicide", "casualconversation", "selfharm", "advice", "adhd", "confession", "amiugly", "bipolar", "bipolarreddit", "stopselfharm", "drugs", "mentalhealth" ]

    # createTable()
    # for r in subreddits:
    #     parseSubreddit(r, red)
    #     print(datetime.datetime.now().strftime('%Y-%m-%d %H:%M - Added 100 ' + r + '.'))
    foo('chinaart', red)

# main()
createTable()
