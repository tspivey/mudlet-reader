reader.stop()
reader.line = reader.line + 1
-- We subtract 1 here because of the always blank line at the end.
if reader.line > getLineCount() - 1 then
	ttsQueue("Bottom")
	reader.line = getLineCount() - 1
end
local line = getLines(reader.line, reader.line + 1)[1]
ttsQueue(line)
