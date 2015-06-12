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
  robot.respond /looking il/i, (msg) ->
    randevopsMe robot, (message) ->
      msg.send message

randevopsMe = (robot, cb) ->
  robot.http("http://kimjongillookingatthings.tumblr.com/random")
    .get() (err, res, body) ->
      devopsMe robot, res.headers.location, (location) ->
        cb location

devopsMe = (robot, location, cb) ->
  robot.http(location)
    .get() (err, res, body) ->

      $ = cheerio.load(body)

      img = $('.photo img').attr('src')
      caption = $('.photo p').innerText

      message = '''
        Dear leader #{caption}
        #{img}
      '''

      cb message

