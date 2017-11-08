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

# Open up the config file and read it's contents
config = configparser.ConfigParser()
config.sections()
config.read('credentials.ini')
# Create an instance of Reddit with OAuth2
reddit = praw.Reddit(client_id = config['User']['id'],
                     client_secret = config['User']['secret'],
                     redirect_uri = config['User']['uri'],
                     user_agent = config['User']['user_agent'])

# This is intended to show how get the json info returned from reddit directly
# but I cannot seem to get it to work
# reddit.config.store_json_result = True
fileLocation = os.path.join('output', datetime.datetime.now().strftime('%Y-%m-%d %H:%M') + ' suicidewatch.json')
f = open(fileLocation, 'w+') # Open up output file
subreddit = reddit.subreddit('SuicideWatch')
posts = subreddit.new(limit=100)
output = { "data": [] }
for submission in posts:
    if not submission.stickied:
        tmp = {}
        tmp['title'] = submission.title
        tmp['ups'] = submission.ups
        tmp['downs'] = submission.downs
        tmp['comments'] = []
        for comment in submission.comments:
            tmp['comments'].append(comment.body)

        output['data'].append((tmp))

f.write(json.dumps(output, sort_keys = True, indent = 2))
