if reader.copy ~= 1 then
    reader.start_line = reader.line
    reader.copy = 1
    reader.stop()
    reader.sayline("selection start.")
    
    else
    reader.end_line = reader.line
    reader.copy = 0
    reader.stop()
    reader.sayline("Selection coppied.")
    
    end
    
    if reader.copy == 0 then
    line = ''
    for i=reader.start_line, reader.end_line do
    local tmpline = getLines(i, i + 1)[1]
    line = line .. tmpline
    if i ~= reader.end_line then
    line = line .. "\n"
    end
    end
    setClipboardText(line)
    end