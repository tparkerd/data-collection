'use strict';
const snoowrap = require('snoowrap'),
      config   = require('./config.js')

// curl https://oauth.reddit.com/api/v1/access_token --user-agent "WordChatBox:wordwatch:v1.0.0" --user mHyCH3sNGXTjMg:IFxWKMElgD-wPuBI1BrQSVsNIxo --data 'grant_type=client_credentials'


// const r = new snoowrap({
//   userAgent: config.user.userAgent,
//   accessToken: config.user.accessToken
// })

// Start time: 1451624400 = Friday, January 1, 2016 12:00:00 AM EST
// End time:   1483246800 = Sunday, January 1, 2017 12:00:00 AM EST
let start = 1451624400
let end   = 1483246800

// SUBREDDITS = [ "depression", "suicidewatch", "anxiety", "foreveralone", "offmychest", "socialanxiety", "sanctionedsuicide", "casualconversation", "selfharm", "advice", "adhd", "confession", "amiugly", "bipolar", "bipolarreddit", "stopselfharm", "drugs", "mentalhealth" ]



let createTables = () => {

}

let search = (start, end, subreddits) => {
  let query = 'timestamp:' + start + '..' + end
  r.search({
    query: query,
    subreddit: 'depression',
    syntax: 'cloudsearch',
    limit: 1
  }).then(console.log)
}

let init = (config) => {
  // Create a new snoowrap requester with OAuth credentials.
  // For more information on getting credentials, see here: https://github.com/not-an-aardvark/reddit-oauth-helper
  const r = new snoowrap({
    userAgent: config.user.userAgent,
    refreshToken: config.user.refreshToken,
    clientId: config.user.clientId,
    clientSecret: config.user.clientSecret
  })
}
