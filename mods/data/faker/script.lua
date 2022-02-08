function onCreatePost()
    addVCREffect('camGame')
    addVCREffect('camHud')
end

function onUpdate(elapsed)
    songPos = getSongPosition()
    local currentBeat = (songPos/5000)*(curBpm/60)
    function opponentNoteHit(id, direction, noteType, isSustainNote)
    triggerEvent('Screen Shake', '0.1, 0.01', '0.1, 0.01');
    end
    end