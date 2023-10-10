/// @description phases 
// You can write your code in this editor

// switches between phases
switch (phase) 
{
	//case 0: {
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
		//break
	//}
	case 1: {// phase 0 owo
		if not fairyamount then break
		
		alarm[0] = 60
		
		// i have no fucking clue
		var spawn	= stage_pos(96 + (fairycount * 64), 0)
		instance_create_fairy(spawn.x, spawn.y, {
			mode: FAIRY_MODE.NORMAL,
			colour: "white",
			direction: DIRECTION.DOWN,
			speed: 1,
			dest: { x: spawn.x, y: 150 },
			maxbullet: 5,
		})
		
		fairyamount--
		fairycount++
		break
	}
	case 3: {
		if not fairyamount then break
		
		alarm[0] = 10
		
		
		
		var type = fairyamount % 2 == 0
		var spawn = type ? stage_pos(0, 0) : stage_pos(STAGE_WIDTH, 0)
		var dest = type ? stage_pos(STAGE_WIDTH - self.sprite_width - 8, 0) : stage_pos(self.sprite_width + 8, 0)
		var fairy = instance_create_depth(spawn.x, spawn.y, 0, obj_fairy)
		
		
		
		fairy.destination	= dest.x
		fairy.movespeed		= 3
		fairy.maxbullet		= 5
		fairy.mode			= FAIRY_MODE.TARGETING
		
		fairyamount--
		break
	}
	
		case 5: {
		if not fairyamount then break
		
		alarm[0] = 10
		
		var type = fairyamount % 2 == 0
		var spawn = type ? stage_pos(0, 96) : stage_pos(STAGE_WIDTH, 160)
		var fairy = instance_create_depth(spawn.x, spawn.y, 0, obj_fairy)
			
		fairy.direction		= type ? DIRECTION.RIGHT : DIRECTION.LEFT
		fairy.speed			= 3 
		fairy.maxbullet		= 5
		fairy.mode			= FAIRY_MODE.NORMAL
		
		fairyamount--
		break
	}
}