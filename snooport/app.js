'use strict';
const snoowrap = require('snoowrap'),
      config   = require('./config.js'),
      fs       = require('fs'),
      path     = require('path')


// curl https://oauth.reddit.com/api/v1/access_token --user-agent "WordChatBox:wordwatch:v1.0.0" --user mHyCH3sNGXTjMg:IFxWKMElgD-wPuBI1BrQSVsNIxo --data 'grant_type=client_credentials'

// Start time: 1451624400 = Friday, January 1, 2016 12:00:00 AM EST
// End time:   1483246800 = Sunday, January 1, 2017 12:00:00 AM EST
let start = 1451624400
let end   = 1483246800

let subreddits = [ "depression", "suicidewatch", "anxiety", "foreveralone", "offmychest", "socialanxiety", "sanctionedsuicide", "casualconversation", "selfharm", "advice", "adhd", "confession", "amiugly", "bipolar", "bipolarreddit", "stopselfharm", "drugs", "mentalhealth" ]

subreddits = [ 'depression' ]


let createTables = () => {
  // TODO
}

let search = (start, end, subreddits, conn) => {
  let query = 'timestamp:' + start + '..' + end
  conn.search({
    query: query,
    subreddit: 'depression',
    syntax: 'cloudsearch',
    limit: 1
  })
  // .fetchAll()
  .then( listing => {
    console.log(Object.keys(listing[0]));
    for (let e in Object.keys(listing[0])) {
      console.log(listing[0][e]);
    }
  })
  }

let init = (config) => {
  // Create a new snoowrap requester with OAuth credentials.
  // For more information on getting credentials, see here: https://github.com/not-an-aardvark/reddit-oauth-helper
  return new snoowrap({
    userAgent: config.user.userAgent,
    refreshToken: config.user.refreshToken,
    clientId: config.user.clientId,
    clientSecret: config.user.clientSecret
  })
}

let main = () => {
  let conn = init(config)
  search(start, end, subreddits, conn)
}

main()
