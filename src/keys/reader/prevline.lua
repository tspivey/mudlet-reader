reader.line = reader.line - 1
if reader.line < 0 then
	reader.say("Top", true)
	reader.line = 0
end
local line = getLines(reader.line, reader.line + 1)[1]
reader.say(line)
