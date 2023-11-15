reader.line = 0
local line = getLines(reader.line, reader.line + 1)[1]
reader.say("Top", true)
reader.stop()
reader.sayline(line)
