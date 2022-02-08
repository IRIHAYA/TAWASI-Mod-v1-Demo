function goodNoteHit(id, direction, noteType, isSustainNote)

	setProperty('health', getProperty('health')+ 0.023)
	if isSustainNote then
		setProperty('health', getProperty('health')- 0.046)
	end

end

function noteMiss(id, direction, noteType, isSustainNote)

	if not isSustainNote then
		setProperty('health', getProperty('health')- 0.0690)
	else
		setProperty('songMisses', getProperty('songMisses')- 1)
		setProperty('health', getProperty('health')+ 0.046)
		setProperty('songScore', getProperty('songScore')+ 10)
	end

end