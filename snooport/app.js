'use strict';
const snoowrap = require('snoowrap'),
      config   = require('./config.js'),
      // fs       = require('fs'),
      path     = require('path'),
      mysql    = require('mysql'),
      pool     = mysql.createPool({
        connectionLimit: 10,
        host: config.db.host,
        user: config.db.username,
        password: config.db.password,
        database: config.db.database
      })
      // pool.on('release', (connection) => {
      //   console.log('Connection %d released', connection.threadId)
      // })
      pool.on('end', (connection) => {
        console.log('Pool has been terminated')
      })

// Create a new snoowrap requester with OAuth credentials.
// For more information on getting credentials, see here: https://github.com/not-an-aardvark/reddit-oauth-helper
let r = new snoowrap({
  userAgent: config.user.userAgent,
  refreshToken: config.user.refreshToken,
  clientId: config.user.clientId,
  clientSecret: config.user.clientSecret
})

r.config({ requestDelay: 2000 })

let postCount = 0

let insert = (data) => {
  'use strict'
  // Make sure all fields are defined
  // Move these into the appropriate types because otherwise these are being
  // just being set a second time, unnecessarily
  data.author = data.author.name
  data.subreddit = data.subreddit.display_name
  data.contenttext = data.body || data.selftext
  data.body = data.body || null
  data.selftext = data.selftext || null
  data.depth = data.depth || null
  data.parent_id = data.parent_id || null
  data.num_comments = data.num_comments || 0
  data.pinned = data.pinned || false
  data.selftext_html = data.selftext_html || null
  data.title = data.title || null
  data.url = data.url ||  ('https://www.reddit.com' + data.permalink) || null
  data.view_count = data.view_count || null
  if (data.ups < 5) return
  if (data.contenttext < 25) return

  if (data.constructor.name === 'Submission') {
    data.comments.fetchAll().then( comments => {
      for (let i = 0; i < comments.length; i++) {
        insert(comments[i])
      }
    })
  } else if (data.constructor.name === 'Comment') {
    data.replies.fetchAll().then( replies => {
      for (let i = 0; i < replies.length; i++) {
        insert(replies[i])
      }
    })
  } else {
    return
  }


  pool.getConnection( (err, db) => {
    if (err) throw err
  db.config.queryFormat = function (query, values) {
    if (!values) return query
    return query.replace(/\:(\w+)/g, function (txt, key) {
      if (values.hasOwnProperty(key)) {
        return this.escape(values[key])
      }
      return txt;
    }.bind(this))
  }
    let sql = `INSERT INTO posts(approved_at_utc, approved_by, archived, author, author_flair_css_class, author_flair_text, banned_at_utc, banned_by, can_gild, can_mod_post, created, created_utc, distinguished, downs, edited, gilded, id, likes, mod_note, mod_reason_by, mod_reason_title, name, num_reports, permalink, removal_reason, report_reasons, saved, score, stickied, subreddit, subreddit_id, subreddit_name_prefixed, subreddit_type, ups, num_comments, pinned, selftext_html, title, url, view_count, body, depth, parent_id, contenttext) VALUES (FROM_UNIXTIME(:approved_at_utc), :approved_by, :archived, :author, :author_flair_css_class, :author_flair_text, FROM_UNIXTIME(:banned_at_utc), :banned_by, :can_gild, :can_mod_post, FROM_UNIXTIME(:created), FROM_UNIXTIME(:created_utc), :distinguished, :downs, :edited, :gilded, :id, :likes, :mod_note, :mod_reason_by, :mod_reason_title, :name, :num_reports, :permalink, :removal_reason, :report_reasons, :saved, :score, :stickied, :subreddit, :subreddit_id, :subreddit_name_prefixed, :subreddit_type, :ups, :num_comments, :pinned, :selftext_html, :title, :url, :view_count, :body, :depth, :parent_id, :contenttext)`

    db.query(sql, data, (error, results, fields) => {
      console.log('%d) [%s] %s... %s', ++postCount, data.constructor.name, data.contenttext.substring(0, 25), data.url)
      db.release()
      if (error) throw error
    })
  })
}

let search = (conn, s, e, sub) => {
  let query = 'timestamp:' + s + '..' + e
  conn.search({
    query: query,
    subreddit: sub,
    syntax: 'cloudsearch'
  })
  .fetchMore({ amount: 20 })
  .then( list => {
    for (let i = 0; i < list.length; i++) {
      list[i].expandReplies().then( result => {
        insert(list[i])
      })
    }
    return
  })
  .done()
}


let main = () => {
  'use strict'
  pool.getConnection( (err, db) => {
    if (err) throw err
    let sql = 'DROP TABLE IF EXISTS posts'
    db.query(sql, (error, results, fields) => {
      console.log('Reset database')
      if (error) throw error
    })

    sql = ` CREATE TABLE posts(
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
                        distinguished BOOLEAN,
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
                        selftext_html TEXT(12000),
                        title VARCHAR(512),
                        url VARCHAR(512),
                        view_count INTEGER(11),

                        body TEXT(12000),
                        depth INTEGER(11),
                        parent_id VARCHAR(64),

                        contenttext TEXT(12000),
                        CONSTRAINT PRIMARY KEY (_id)
                    ) ENGINE = INNODB
                    `
    db.query(sql, (error, results, fields) => {
      console.log('Created \'posts\' table')

      // DO THE SEARCH
      let subreddits = [ "depression", "suicidewatch", "anxiety", "foreveralone", "offmychest", "socialanxiety", "sanctionedsuicide", "casualconversation", "selfharm", "advice", "adhd", "confession", "amiugly", "bipolar", "bipolarreddit", "stopselfharm", "drugs", "mentalhealth" ]

      let start = 1451624400 // 1451624400 = Friday, January 1, 2016 12:00:00 AM EST
      // let end   = 1483246800 // 1483246800 = Sunday, January 1, 2017 12:00:00 AM EST
      let end = 1483246800
      let tmp   = start + 18000
      // See how submissions are pulled down and how to traverse each of the comments
      // As is, it just seems to pull down all the top-level posts but not a single comment. I'm still not sure what fetchAll() does

      // For each sub...
      for (let sub in subreddits) {
        // For each 5 hours
        while (end > tmp) {
          console.log('%d %d %s', start, tmp, subreddits[sub]);
          search(r, start, tmp, subreddits[sub])
          start = tmp
          tmp += 18000
        }
      }
      // END SEARCH
      db.release()
      if (error) throw error
    })
  })
}

main()
