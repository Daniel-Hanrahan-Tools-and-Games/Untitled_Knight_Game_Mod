local ModGameplay = {
	extends = Node2D,
}

dblTimer = 0
intAction = 0

function ModGameplay:_ready()

end

function ModGameplay:_process(delta)
	-- what happens when spacebar is pressed
	if Input:is_action_pressed("action") then
		intAction = 5
	end
	-- what happens when up or w is pressed
	if Input:is_action_pressed("up") then
		intAction = 8
	end
	-- what happens when down or s is pressed
	if Input:is_action_pressed("down") then
		intAction = 2
	end
	-- what happens when right or d is pressed
	if Input:is_action_pressed("right") then
		intAction = 6
	end
	-- what happens when left or a is pressed
	if Input:is_action_pressed("left") then
		intAction = 4
	end
	-- for some reason lua does not like input with two buttons at the same time
end

function _input(event)
	-- what happens when spacebar is pressed
	if event:is_action_pressed("action") then
		intAction = 5
	end
	-- what happens when up or w is pressed
	if event:is_action_pressed("up") then
		intAction = 8
	end
	-- what happens when down or s is pressed
	if event:is_action_pressed("down") then
		intAction = 2
	end
	-- what happens when right or d is pressed
	if event:is_action_pressed("right") then
		intAction = 6
	end
	-- what happens when left or a is pressed
	if event:is_action_pressed("left") then
		intAction = 4
	end
	-- for some reason lua does not like input with two buttons at the same time
end

function ModGameplay:_on_timer_timeout()
	dblTimer = dblTimer + 1
	-- what happens when a game over happens
	if dblTimer == 16
	then
		-- what happens when correct action is not pressed
		if intAction ~= 2
		then
			-- goes to mod menu
			self:get_tree():change_scene_to_file("res://MainMenu.tscn")
		end
	end
	-- what happens when a game over happens
	if dblTimer == 22
	then
		-- what happens when correct action is not pressed
		if intAction ~= 4
		then
			-- goes to mod menu
			self:get_tree():change_scene_to_file("res://MainMenu.tscn")
		end
	end
	-- what happens when a game over happens
	if dblTimer == 28
	then
		-- what happens when correct action is not pressed
		if intAction ~= 8
		then
			-- goes to mod menu
			self:get_tree():change_scene_to_file("res://MainMenu.tscn")
		end
	end
	-- what happens when a game over happens
	if dblTimer == 34
	then
		-- what happens when correct action is not pressed
		if intAction ~= 6
		then
			-- goes to mod menu
			self:get_tree():change_scene_to_file("res://MainMenu.tscn")
		end
	end
	-- what happens when a game over happens
	if dblTimer == 40
	then
		-- what happens when correct action is not pressed
		if intAction ~= 5
		then
			-- goes to mod menu
			self:get_tree():change_scene_to_file("res://MainMenu.tscn")
		end
	end
end

function ModGameplay:_on_video_stream_player_finished()
	-- goes back to mod menu when done
	self:get_tree():change_scene_to_file("res://MainMenu.tscn")
end

return ModGameplay
