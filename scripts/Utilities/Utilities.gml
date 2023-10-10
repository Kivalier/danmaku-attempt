// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
#macro STAGE_OFFSET_WIDTH	64
#macro STAGE_WIDTH			(640 - STAGE_OFFSET_WIDTH)
#macro STAGE_HEIGHT			736
#macro STAGE_RAW_WIDTH		640

enum DIRECTION {
	RIGHT = 0,
	UP = 90,
	LEFT = 180,
	DOWN = 270
}

function stage_pos(x = 0, y = 0) {
	x += STAGE_OFFSET_WIDTH

	return { x, y }
}		

// This use room position
function instance_is_in_stage() {
	if self.x < STAGE_OFFSET_WIDTH {
		return false
	}
	
	if self.x > STAGE_RAW_WIDTH {
		return false
	}

	if self.y > STAGE_HEIGHT {
		return false
	}
	
	return true
}

function instance_create_bullet(x, y, colour, _speed, scale) {
	static bullets = {
		red: spr_bullet1,
		blue: spr_bullet2,
		green: spr_bullet3
	}
	
	var bullet = instance_create_depth(x, y, 0, obj_bullet1)
	bullet.sprite_index = bullets[$ colour]
	bullet.speed		= _speed
	bullet.image_xscale = scale
	bullet.image_yscale = scale
	
	return bullet
}

function instance_create_fairy(x, y, data = {}) {
	static fairies = {
		white: spr_fairy,
	}
	
	var fairy = instance_create_depth(x, y, 0, obj_fairy)
	fairy.sprite_index	= fairies[$ data.colour ?? "white"]
	fairy.direction		= data.direction ?? DIRECTION.DOWN
	fairy.speed			= data.speed ?? 3
	fairy.mode			= data.mode ?? FAIRY_MODE.NORMAL
	fairy.maxbullet		= data.maxbullet ?? 0
	fairy.dest			= data.dest ?? false // Change later
	
	// Dai-chan cute
	return fairy
}