local allowCountdown = false
local videoPlay = true
function onStartCountdown()
	if not allowCountdown and isStoryMode and not seenCutscene then --Block the first countdown
		startVideo('cutscene3');
		allowCountdown = true;
        seenCutscene = true
		return Function_Stop;  
    end
	return Function_Continue;
end


function onEndSong()
    
    if isStoryMode and videoPlay then
        startVideo('cutscene4');
        videoPlay = false
        return Function_Stop
    end
    return Function_Continue
end
