reader.stop()
reader.line = reader.line - 1
if reader.line < 0 then
	ttsQueue("Top")
	reader.line = 0
end
local line = getLines(reader.line, reader.line + 1)[1]
ttsQueue(line)
