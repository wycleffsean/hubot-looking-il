# Description:
#   Because Dogs loves computers!
#
# Configuration:
#   None
#
# Commands:
#   hubot dogs me - Grab a random gif from http://computerdogs.tumblr.com/
#
# Author:
#   epinault

cheerio = require('cheerio')

module.exports = (robot) ->
  robot.respond /dogs me/i, (msg) ->
    randevopsMe robot, (url) ->
      msg.send url 

  robot.hear /dogs/i, (msg) ->
    randevopsMe robot, (url) ->
      msg.send url 

randevopsMe = (robot, cb) ->
  robot.http("http://computerdogs.tumblr.com/random")
    .get() (err, res, body) ->
      devopsMe robot, res.headers.location, (location) ->
        cb location 

devopsMe = (robot, location, cb) ->
  robot.http(location)
    .get() (err, res, body) ->

      $ = cheerio.load(body)

      img = $('img', 'li[class=post]').attr('src')

      cb img

