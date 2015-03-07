module.exports = (robot) ->
    robot.respond /die/i, (msg) ->
        msg.reply "Thats not very nice"