/// @description Insert description here
// You can write your code in this editor

//y += speed
//x = min(x + movespeed, destination)



var destination = array_first(dest)

if destination {
	direction = point_direction(x, y, destination.x, destination.y)
	// show_debug_message("X: {0}, Y: {1}", x, y)
	if destination.x == floor(x) and destination.y == floor(y) {
		if array_length(dest) - 1 > 0 {
			array_shift(dest)
			speed = struct_exists(destination, "speed") ? destination.speed : 0
		} else {
			speed = struct_exists(destination, "speed") ? destination.speed : 0
			dest = []
		}
	}
}

// checks if fairies are in the stage
if instance_is_in_stage() {
	fresh = false
}

// destroys fairies when outside stage
if not fresh and not instance_is_in_stage() {
	instance_destroy()
}

if hp < 1 and not death {
	var sprite = sprite_get_name(sprite_index) + "death"
	sprite_index = asset_get_index(sprite)
	death = true
	mode = FAIRY_MODE.RAINBOW // stops shooting when death anim
		audio_play_sound(snd_fairydeath, 1, false)
}
