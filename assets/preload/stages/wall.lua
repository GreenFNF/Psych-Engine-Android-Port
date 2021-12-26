function onCreate()
	-- background shit
	makeLuaSprite('stageback', 'MindWall', -500, -300);
	setLuaSpriteScrollFactor('MindWall', 0.9, 0.9);
	
	makeLuaSprite('stage front', 'stage front', -650, 600);
	setLuaSpriteScrollFactor('stage front', 0.9, 0.9);
	scaleObject('stage front', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('MindWall', 'stage light', -125, -100);
		setLuaSpriteScrollFactor('stage light', 0.9, 0.9);
		scaleObject('MindWall', 1.1, 1.1);
		
		makeLuaSprite('MindWall', 'stage light', 1225, -100);
		setLuaSpriteScrollFactor('stage light', 0.9, 0.9);
		scaleObject('stage light', 1.1, 1.1);
		setPropertyLuaSprite('stage light', 'flipX', true); --mirror sprite horizontally

		makeLuaSprite('stage curtains', 'stage curtains', -500, -300);
		setLuaSpriteScrollFactor('stage curtains', 1.3, 1.3);
		scaleObject('stage curtains', 0.9, 0.9);
	end

	addLuaSprite('stageback', false);
	addLuaSprite('stage front', false);
	addLuaSprite('stage light', false);
	addLuaSprite('stage light', false);
	addLuaSprite('stage curtains', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end