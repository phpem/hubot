# Description:
#   hubot doesn't like to die
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#
# Author:
#   hodgy

module.exports = (robot) ->
    robot.respond /die/i, (msg) ->
        msg.reply ("Thats not very nice")