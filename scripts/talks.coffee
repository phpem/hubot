# Description:
#   Get the latest talk information for phpem. 
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot what is the next talk - Recieve the title and speaker for the next talk
#   hubot when is the next talk - Recieve the date of the next talk
#   hubot where is the next talk - Recieve the location of the next talk

module.exports = (robot) ->

  robot.respond /whats? (is )?the next talk/i, (msg) ->
    msg.http("https://phpem-talks.herokuapp.com/")
      .get() (err, res, body) ->
        msg.send JSON.parse(body).subject + " by " + JSON.parse(body).speaker
        return

  robot.respond /whens? (is )?the next talk/i, (msg) ->
    msg.http("https://phpem-talks.herokuapp.com/")
      .get() (err, res, body) ->
        msg.send JSON.parse(body).date_time

  robot.respond /wheres? (is )?the next talk/i, (msg) ->
    msg.http("https://phpem-talks.herokuapp.com/")
      .get() (err, res, body) ->
        msg.send JSON.parse(body).location