-- ======================PREPARATION==============================
set Chrome to false
set Safari to false
set Firefox to false
set leTitre to false
set laDescription to " "

tell application "System Events" to set app_name to name of the first process whose frontmost is true

if application "Safari" is running then
	if app_name is "Safari" then set Safari to true
end if

if application "Google Chrome" is running then
	if app_name is "Google Chrome" then set Chrome to true
end if

if application "plugin-container" is running then
	if app_name is "Firefox" then set Firefox to true
end if

-- ======================TRAITEMENT==============================

if Safari is true then
	tell application "Safari" to set theURL to ({URL of current tab of window 1} as string)
else if Chrome is true then
	tell application "Google Chrome" to set theURL to ({get URL of active tab of first window} as string)
else if Firefox is true then
	try
		tell application "System Events" to keystroke "l" using {command down}
		delay 0.5
		tell application "System Events" to keystroke "c" using {command down}
		delay 0.5
		if (the clipboard as string) begins with "http" then set theURL to (the clipboard as string)
	end try
else if (the clipboard as string) begins with "http" then
	set theURL to (the clipboard as string)
end if

set liste to {"youtube", "vimeo", "dailymotion", "m4v", "mp4", "m3u8", "twitch"}
repeat with x in liste
	if theURL contains x then
		do shell script "/usr/local/bin/mpv --ontop --window-scale=0.5 --geometry=0:0 --no-border " & quoted form of theURL
		exit repeat
	end if
end repeat
