/// @description phases 
// You can write your code in this editor

// switches between phases

switch (phase) 
{
	case 0: {
		//var pos
		//
		//pos = stage_pos(0, 0)
		//var fairy1 = instance_create_depth(pos.x, pos.y, 0, obj_fairy)
		//fairy1.speed = 0
		//
		//pos = stage_pos(32, 32)
		//var fairy2 = instance_create_depth(pos.x, pos.y, 0, obj_fairy)
		//fairy2.speed = 0
		//
		//pos = stage_pos(STAGE_WIDTH, 32)
		//var fairy3 = instance_create_depth(pos.x, pos.y, 0, obj_fairy)
		//fairy3.speed = 0
		//
		//pos = stage_pos(STAGE_WIDTH / 2, 64)
		//var fairy4 = instance_create_depth(pos.x, pos.y, 0, obj_fairy)
		//fairy4.speed = 0
		//
		//pos = stage_pos(STAGE_WIDTH, STAGE_HEIGHT)
		//var fairy5 = instance_create_depth(pos.x, pos.y, 0, obj_fairy)
		//fairy5.speed = 0
		break
	}
	
	case 1: {
		if not fairyamount then break
		
		alarm[0]	= 40
		
		// i have no fucking clue
		var spawn	= stage_pos(224 - (fairycount * 64), 0)
		instance_create_fairy(spawn.x, spawn.y, {
			mode:		FAIRY_MODE.NORMAL,
			colour:		"pink",
			direction:	DIRECTION.DOWN,
			speed:		1,
			dest: [{ x: spawn.x, y: 150, speed: 0 }],//, { x: spawn.x, y: 350, speed: 0 }],
			maxbullet:	100,
		})
		
		spawn	= stage_pos(352 + (fairycount * 64), 0)
		instance_create_fairy(spawn.x, spawn.y, {
			mode:		FAIRY_MODE.NORMAL,
			colour:		"pink",
			direction:	DIRECTION.DOWN,
			speed:		1,
			dest: [{ x: spawn.x, y: 150, speed: 0 }],
			maxbullet:	100,

		})

		fairyamount--
		fairycount++
		break
	}
	
	case 2: {
		if not fairyamount then break
		
		alarm[0] = 50
		
		var spawn = stage_pos(STAGE_OFFSET_WIDTH + (fairycount * 96), 0)
		var fairy = instance_create_fairy(spawn.x, spawn.y, {
			mode: FAIRY_MODE.TARGETING,
			colour: "blue",
			direction: DIRECTION.DOWN,
			speed: 1.1,
			dest: [{ x: spawn.x, y: 90, speed: 0 }],
			maxbullet: 100
			
		})
		fairy.hp = 50
		
		spawn	= stage_pos(STAGE_WIDTH - STAGE_OFFSET_WIDTH - (fairycount * 96), 0)
		fairy	= instance_create_fairy(spawn.x, spawn.y, {
			mode: FAIRY_MODE.TARGETING,
			colour: "blue",
			direction: DIRECTION.DOWN,
			speed: 1.1,
			dest: [{ x: spawn.x, y: 90, speed: 0 }],
			maxbullet: 100
			
		})
		
		fairy.hp = 50
		fairyamount--
		fairycount++
		break
	}
		
		
	case 3: {
		if not fairyamount then break
		
		alarm[0]	= 60
		
		var spawn	= stage_pos(320 - 64, 0)
		instance_create_fairy(spawn.x, spawn.y, {
			mode:		FAIRY_MODE.SLOW,
			colour:		"pink",
			direction:	DIRECTION.DOWN,
			speed :		1.5,
			dest:		[{ x: spawn.x, y: 210, speed: 1.5 }, {x: -64, y: 210 }],
			maxbullet:	50,
		})
		

		spawn	= stage_pos(384 - 64, 0)
		instance_create_fairy(spawn.x, spawn.y, {
			mode:		FAIRY_MODE.SLOW,
			colour:		"blue",
			direction:	DIRECTION.DOWN,
			speed :		1.5,
			dest:		[{ x: spawn.x, y: 210, speed: 1.5 }, {x: 704, y: 210}],
			maxbullet:	50,
		})


		fairyamount--
		fairycount++
		break
	}
	case 4: {
		if not fairyamount then break
		
		alarm[0] = 50
		
		var spawn =	stage_pos(480 - 64, 0)
		var fairy = instance_create_fairy(spawn.x, spawn.y, {
			mode: FAIRY_MODE.TARGETING,
			colour: "pink",
			direction: DIRECTION.DOWN,
			speed: 1.5,
			dest: [{ x: spawn.x, y: 150, speed: 0 }],
			maxbullet: 50
			
		})
		fairy.hp = 50
		
		spawn = stage_pos(224 - 64, 0)
		fairy = instance_create_fairy(spawn.x, spawn.y, {
			mode: FAIRY_MODE.TARGETING,
			colour: "blue",
			direction: DIRECTION.DOWN,
			speed: 1.5,
			dest: [{ x: spawn.x, y: 150, speed: 0 }],
			maxbullet: 50
		})
		fairy.hp = 50
		
		spawn = stage_pos(352 - 64, 0)
		fairy = instance_create_fairy(spawn.x, spawn.y, {
			mode: FAIRY_MODE.THREE,
			colour: "red",
			direction: DIRECTION.DOWN,
			speed: 1.5,
			dest: [{ x: spawn.x, y: 100, speed: 0 }],
			maxbullet: 50
		})
		fairy.hp = 50
		
		fairyamount--
		fairycount++
		break
	}

	
	case 5: {
		if not fairyamount then break
		
		alarm[0]	= 30
		
		var spawn	= stage_pos(192 - 64 + (fairycount * 64), 0)
		var fairy   = instance_create_fairy(spawn.x, spawn.y, {
			mode: FAIRY_MODE.RANDOM,
			colour: "pink",
			direction: DIRECTION.LEFT,
			speed : 2,
			dest: [{ x: spawn.x, y: 128, speed: 0}],
			maxbullet: 100,
		})
		fairy.hp = 100
		
		spawn	= stage_pos(512 - 64 - (fairycount * 64), 0)
		fairy	= instance_create_fairy(spawn.x, spawn.y, {
			mode: FAIRY_MODE.RANDOM,
			colour: "blue",
			direction: DIRECTION.RIGHT,
			speed : 2,
			dest: [{ x: spawn.x, y: 128, speed: 0}],
			maxbullet: 100,
		})
		fairy.hp = 100
		
		fairyamount--
		fairycount++
		break
	}
	
	case 6: {
		if not fairyamount then break
		
		alarm[0] = 20
		
		var spawn = stage_pos(160 - 64, 0)
		var fairy = instance_create_fairy(spawn.x, spawn.y, {
			mode: FAIRY_MODE.TWO,
			colour: "pink",
			direction: DIRECTION.DOWN,
			speed : .5,
			//dest: [{ x: spawn.x, y: 768}],
			maxbullet: 100,
		})
		fairy.hp = 100
		
		spawn = stage_pos(544 - 64, 0)
		fairy = instance_create_fairy(spawn.x, spawn.y, {
			mode: FAIRY_MODE.TWO,
			colour: "pink",
			direction: DIRECTION.DOWN,
			speed : .5,
			//dest: [{ x: spawn.x,  y: 768}],
			maxbullet: 100,
		})
		fairy.hp = 100
		
		spawn = stage_pos(352 - 64, 0)
		fairy = instance_create_fairy(spawn.x, spawn.y, {
			mode: FAIRY_MODE.THREE,
			colour: "red",
			direction: DIRECTION.DOWN,
			speed : 0.5,
			//dest: [{ x: spawn.x,  y: 768}],
			maxbullet: 200,
		})
		fairy.hp = 150
		
		fairyamount--
		fairycount++
		break
	}
	case 7: {
			if not fairyamount then break
		
		alarm[0] = 20
		
		var spawn = stage_pos(128 - 64, 768)
		var fairy = instance_create_fairy(spawn.x, spawn.y, {
			mode: FAIRY_MODE.TARGETING,
			colour: "pink",
			direction: DIRECTION.UP,
			speed : 1,
			//dest: [{ x: spawn.x, y: 768}],
			maxbullet: 100,
		})
		fairy.hp = 50
		
		spawn = stage_pos(576 - 64, 768)
		fairy = instance_create_fairy(spawn.x, spawn.y, {
			mode: FAIRY_MODE.TARGETING,
			colour: "pink",
			direction: DIRECTION.UP,
			speed : 1,
			//dest: [{ x: spawn.x,  y: 768}],
			maxbullet: 100,
		})
		fairy.hp = 50
		
		fairyamount--
		fairycount++
		break

	}
	
		case 8: {
		if not fairyamount then break
		
		alarm[0] = 60
		
		var spawn = stage_pos(150 - 64, 0)
		var fairy = instance_create_fairy(spawn.x, spawn.y, {
			mode: FAIRY_MODE.TARGETING,
			colour: "pink",
			//direction: DIRECTION.DOWN,
			speed: 1.5,
			dest: [{ x: spawn.x, y: 250, speed: 0}],
			maxbullet: 50
		})
		fairy.hp = 100
		
		var spawn = stage_pos(256 - 64, 0)
		var fairy = instance_create_fairy(spawn.x, spawn.y, {
			mode: FAIRY_MODE.RANDOM,
			colour: "blue",
			//direction: DIRECTION.DOWN,
			speed: 1.5,
			dest: [{ x: spawn.x, y: 150, speed: 0}],
			maxbullet: 50
		})
		fairy.hp = 100
		
		var spawn = stage_pos(352 - 64, 0)
		var fairy = instance_create_fairy(spawn.x, spawn.y, {
			mode: FAIRY_MODE.THREE,
			colour: "red",
			//direction: DIRECTION.DOWN,
			speed: 1.5,
			dest: [{ x: spawn.x, y: 100, speed: 0}],
			maxbullet: 50
		})
		fairy.hp = 150
		
		var spawn = stage_pos(448 - 64, 0)
		var fairy = instance_create_fairy(spawn.x, spawn.y, {
			mode: FAIRY_MODE.RANDOM,
			colour: "pink",
			//direction: DIRECTION.DOWN,
			speed: 1.5,
			dest: [{ x: spawn.x, y: 150, speed: 0}],
			maxbullet: 50
		})
		fairy.hp = 100
		
		var spawn = stage_pos(544 - 64, 0)
		var fairy = instance_create_fairy(spawn.x, spawn.y, {
			mode: FAIRY_MODE.TARGETING,
			colour: "blue",
			//direction: DIRECTION.DOWN,
			speed: 1.5,
			dest: [{ x: spawn.x, y: 250, speed: 0}],
			maxbullet: 50
		})
		fairy.hp = 100
		
		fairyamount--
		fairycount++
		break

	}
}