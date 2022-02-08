function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Jumpscare' then 
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'NOTE_assets');

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has penalties
			end
		end
	end
end


function opponentNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'Jumpscare' then
makeLuaSprite('image', 'Jumpscare', -1300, -400);
addLuaSprite('image', true);
doTweenAlpha('hello', 'image', 1, 0.1, 'linear');
setObjectCamera('image', 'other');
runTimer('wait', 0.5);
end
end

function onTimerCompleted(tag, loops, loopsleft)
if tag == 'wait' then
doTweenAlpha('byebye', 'image', 0, 0.1, 'linear');
cameraShake('camGame', 0.01, 0.2)
end
end

function onTweenCompleted(tag)
if tag == 'byebye' then
removeLuaSprite('image', true);
end
end