/// @description Insert description here
// You can write your code in this editor

// player bullet speed
if place_meeting (x, y, obj_fairy) {
	sprite_index = spr_hit
	mitsugashira = true
} else if not mitsugashira {
	y -= 20
}

// destroys player shot when outside stage
if not instance_is_in_stage() then begin instance_destroy() end
