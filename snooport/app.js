'use strict';
const snoowrap = require('snoowrap'),
      config   = require('./config.js'),
      fs       = require('fs'),
      path     = require('path')


let createTables = () => {
  // TODO
}

let search = (conn) => {
  // curl https://oauth.reddit.com/api/v1/access_token --user-agent "WordChatBox:wordwatch:v1.0.0" --user mHyCH3sNGXTjMg:IFxWKMElgD-wPuBI1BrQSVsNIxo --data 'grant_type=client_credentials'


  let subreddits = [ "depression", "suicidewatch", "anxiety", "foreveralone", "offmychest", "socialanxiety", "sanctionedsuicide", "casualconversation", "selfharm", "advice", "adhd", "confession", "amiugly", "bipolar", "bipolarreddit", "stopselfharm", "drugs", "mentalhealth" ]

  subreddits = [ 'depression' ]

  let start = 1451624400 // 1451624400 = Friday, January 1, 2016 12:00:00 AM EST
  let end   = 1483246800 // 1483246800 = Sunday, January 1, 2017 12:00:00 AM EST

  // See how submissions are pulled down and how to traverse each of the comments
  // As is, it just seems to pull down all the top-level posts but not a single comment. I'm still not sure what fetchAll() does

  let query = 'timestamp:' + 1483246800 + '..' + 1483250400
  console.log(query)
  conn.search({
    query: query,
    subreddit: 'depression',
    syntax: 'cloudsearch',
    limit: 1
  })
  .then( list => {
    for (let id in list) {
      if (Number.isInteger(Number.parseInt(id))) {
        console.log(id)
        list[id].expandReplies().then( result => {
          // TODO: insert into database

          fs.writeFileSync('test.out', JSON.stringify(result, null, 2), { flag: 'a' })
        })
      }
    }
  })



  }

let main = () => {
  // Create a new snoowrap requester with OAuth credentials.
  // For more information on getting credentials, see here: https://github.com/not-an-aardvark/reddit-oauth-helper
  let r = new snoowrap({
    userAgent: config.user.userAgent,
    refreshToken: config.user.refreshToken,
    clientId: config.user.clientId,
    clientSecret: config.user.clientSecret
  })

  search(r)
}

main()
