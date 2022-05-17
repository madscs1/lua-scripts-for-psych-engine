font = "vcr.ttf"
function onCreatePost()
	--disable vanilla stuff
	setProperty('scoreTxt.visible', false)

    setProperty('timeBar.visible', true)
	setProperty('timeBarBG.visible', true)


	makeLuaText('misses', 'Misses: ' .. getProperty('songMisses'), 200, 0, 618);
	setTextSize('misses', 20)
	setTextAlignment('misses', 'left')
	setProperty('misses.x', 35)
	setProperty('misses.y', 590)
    setTextFont('misses', font)
	addLuaText('misses');

	makeLuaText('rating', 'Rating: ' .. getProperty('ratingName'), 600, 0, 678);
	setTextAlignment('rating', 'left')
	setProperty('rating.x', 35)
	setProperty('rating.y', 630)
	setTextFont('rating', font)
	addLuaText('rating');
	setTextSize('rating', 20)

	makeLuaText('score', 'Score:' .. score, 200, 0, 648);
	setTextAlignment('score', 'left')
	setProperty('score.x', 790)
	setProperty('score.y', 670)
	setTextFont('score', font)
	addLuaText('score');
	setTextAlignment('score', 'left')
	setTextBorder("score", 0)
	setTextSize('score', 17)

	
	setTextString('scoreTxt', 'Rating:' .. getProperty(rating))

	setProperty('timeTxt.x', 450)
	setProperty('timeBg.x', 46545656)
	setProperty('timeTxt.y', 672)
	setProperty('timeTxt.size', 30)	

    makeLuaSprite('timerIcon', 'timer/timerIcon', 80567567567, 670)
    setObjectCamera('timerIcon', 'hud')
    setObjectOrder('timerIcon', 9)
    scaleObject('timerIcon', 0.7, 0.7)
    addLuaSprite('timerIcon')

	setProperty('timeBar.x', 45445645650)
	setProperty('timeBar.y', 685675675)
	setObjectOrder('timeBar', 8)
	setProperty('timeBarBG.x', 456756750)
	setProperty('timeBarBG.y', 685675675)
	setObjectOrder('timeBarBG', 7)    
end

function onRecalculateRating()
	setTextString('misses', 'Misses: ' .. getProperty('songMisses'));
	setTextString('rating', 'Rating: ' .. getProperty('ratingName') .. ' ' .. string.format("(%.2f%%)", rating * 100) .. ' - ' .. getProperty('ratingFC'));
	setTextString('score', 'Score:' .. score);
end

function onUpdatePost()
	
	if (botPlay) then
		setProperty('misses.visible', false)
		setProperty('rating.visible', false)
		setProperty('score.visible', false)
		setProperty('timerIcon.visible', false)
	else
		setProperty('misses.visible', false)
		setProperty('rating.visible', false)
		setProperty('score.visible', true)
		setProperty('timerIcon.visible', false)
	end
end