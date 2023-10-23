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
	if self.x < STAGE_OFFSET_WIDTH - 64 {
		return false
	}
	
	if self.x > STAGE_RAW_WIDTH + 64 {
		return false
	}

	if self.y > STAGE_HEIGHT + 64 {
		return false
	}
	
	if self.y < 32 {
		return false
	}
	
	return true
}

function instance_create_bullet(x, y, colour, _speed, scale) {
	static bullets = {
		red: spr_bullet1_1,
		blue: spr_bullet1_2,
		green: spr_bullet1_3
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
		pink: spr_fairy1,
		blue: spr_fairy2,
		red: spr_fairy3,
	}
	
	var fairy = instance_create_depth(x, y, 0, obj_fairy)
	fairy.sprite_index	= fairies[$ data.colour ?? "pink"]
	fairy.direction		= struct_exists(data, "direction") ? data.direction : DIRECTION.DOWN
	fairy.speed			= struct_exists(data, "speed") ? data.speed : 3
	fairy.mode			= struct_exists(data, "mode") ? data.mode : FAIRY_MODE.NORMAL
	fairy.maxbullet		= struct_exists(data, "maxbullet") ? data.maxbullet : 0
	fairy.dest			= struct_exists(data, "dest") ? data.dest : [] // it has been Chang'e
	
	// Dai-chan cute
	return fairy
}

function string_comma(str) {
	var s = string(str)
	
	for (var i = string_length(s) - 2; i > 1; i -= 3) {
		s = string_insert(",", s, i)
	}
	
	return s
}

function string_padding(int, amt, pad = "0") {
	var s = string_format(int, amt, 0)
	return string_replace_all(s, " ", pad)
}
		