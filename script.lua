function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.2 then
        setProperty('health', health- 0.02);
    end
end

