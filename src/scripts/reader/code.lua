reader = {}
reader.line = 0
function reader:install_trigger()
	local f = function()
		if hasFocus() then
			ttsQueue(getCurrentLine())
		end
	end
	if reader.trigger_id then
		disableTrigger(reader.trigger_id)
		killTrigger(reader.trigger_id)
	end
	reader.trigger_id = tempRegexTrigger("^", f)
end
if getOS() ~= "windows" then
	tempTimer(0, function() reader:install_trigger() end)
end
function reader.remove(event, pkg)
	if pkg ~= "reader" then
		return true -- keep our handler around
	end
	if reader.trigger_id then
		killTrigger(reader.trigger_id)
	end
	if reader.send_event then
		killAnonymousEventHandler(reader.send_event)
	end
end
registerAnonymousEventHandler("sysUninstall", reader.remove, true)
function reader.stop()
	ttsClearQueue()
	ttsSkip()
end
function reader.say(text, interrupt)
	if getOS() == "windows" then
		announce(text)
		return
	end
	if interrupt then
		reader.stop()
	end
	ttsQueue(text)
end

if getOS() ~= "windows" then
	reader.send_event = registerAnonymousEventHandler("sysDataSendRequest", function()
		if command then
			reader.stop()
		end
	end)
	setConfig("announceIncomingText", false)
end
