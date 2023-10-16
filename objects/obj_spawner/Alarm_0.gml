/// @description phases 
// You can write your code in this editor

// switches between phases
switch (phase) 
{
	case 0: {
		//var pos
		
		//pos = stage_pos(0, 0)
		//var fairy1 = instance_create_depth(pos.x, pos.y, 0, obj_fairy)
		//fairy1.speed = 0
		
		//pos = stage_pos(32, 32)
		//var fairy2 = instance_create_depth(pos.x, pos.y, 0, obj_fairy)
		//fairy2.speed = 0
		
		//pos = stage_pos(STAGE_WIDTH, 32)
		//var fairy3 = instance_create_depth(pos.x, pos.y, 0, obj_fairy)
		//fairy3.speed = 0
		
		//pos = stage_pos(STAGE_WIDTH / 2, 64)
		//var fairy4 = instance_create_depth(pos.x, pos.y, 0, obj_fairy)
		//fairy4.speed = 0
		
		//pos = stage_pos(STAGE_WIDTH, STAGE_HEIGHT)
		//var fairy5 = instance_create_depth(pos.x, pos.y, 0, obj_fairy)
		//fairy5.speed = 0
		break
	}
	case 1: {
		if not fairyamount then break
		
		alarm[0]	= 60
		
		// i have no fucking clue
		var spawn	= stage_pos(96 + (fairycount * 64), 0)
		instance_create_fairy(spawn.x, spawn.y, {
			mode:		FAIRY_MODE.NORMAL,
			colour:		"white",
			direction:	DIRECTION.DOWN,
			speed:		1,
			dest:		{ x: spawn.x, y: 150 },
			maxbullet:	5,
		})
		
		fairyamount--
		fairycount++
		break
	}
	case 3: {
		if not fairyamount then break
		
		alarm[0]	= 30
		
		var spawn	= stage_pos(0 - 16, 92)
		instance_create_fairy(spawn.x, spawn.y, {
			mode:		FAIRY_MODE.TARGETING,
			colour:		"white",
			direction:	DIRECTION.RIGHT,
			speed :		3,
			dest:		{ x: spawn.x, y: 150},
			maxbullet:	10,
		})

		fairyamount--
		fairycount++
		break
	}
	case 4: {
		if not fairyamount then break
		
		alarm[0]	= 30
		
		var spawn	= stage_pos(STAGE_WIDTH + 16, 92)
		instance_create_fairy(spawn.x, spawn.y, {
			mode: FAIRY_MODE.TARGETING,
			colour: "white",
			direction: DIRECTION.LEFT,
			speed : 3,
			dest: { x: spawn.x, y: 150},
			maxbullet: 10,
		})
		
		fairyamount--
		fairycount++
		break
	}
	case 6: {
		if not fairyamount then break
		
		alarm[0] = 10
		
		var type = fairyamount % 2 == 0
		var spawn = type ? stage_pos(-64, 96) : stage_pos(704, 160)
		var fairy = instance_create_depth(spawn.x, spawn.y, 0, obj_fairy)
			
		fairy.direction		= type ? DIRECTION.RIGHT : DIRECTION.LEFT
		fairy.speed			= 4 
		fairy.maxbullet		= 5
		fairy.mode			= FAIRY_MODE.RANDOM
		
		fairyamount--
		fairycount++
		break
	}
	case 7: {
		room_goto(room_gameover)
		break
	}
}