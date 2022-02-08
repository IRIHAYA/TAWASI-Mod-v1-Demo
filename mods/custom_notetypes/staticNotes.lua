function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'staticNotes' then 
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'Note/staticNotes');

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has penalties
			end
		end
	end
end


function noteMiss(id, direction, noteType, isSustainNote)
	if noteType == 'staticNotes' then
        playSound('hitStatic1', 1);
		triggerEvent('YOU MISSED THE STATIC NOTE NOW GET FUCKED');
makeLuaSprite('image', 'TV', 0, 0);
addLuaSprite('image', true);
doTweenAlpha('hello', 'image', 1, 0.3, 'linear');
setObjectCamera('image', 'other');
runTimer('wait', 0.3);
end
end

function opponentNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'staticNotes' then
        playSound('hitStatic1', 1);
		triggerEvent('YOU MISSED THE STATIC NOTE NOW GET FUCKED');
makeLuaSprite('image', 'TV', 0, 0);
addLuaSprite('image', true);
doTweenAlpha('hello', 'image', 1, 0.3, 'linear');
setObjectCamera('image', 'other');
runTimer('wait', 0.55);
end
end

function onTimerCompleted(tag, loops, loopsleft)
if tag == 'wait' then
doTweenAlpha('byebye', 'image', 0, 0.3, 'linear');
end
end

function onTweenCompleted(tag)
if tag == 'byebye' then
removeLuaSprite('image', true);
end
end