/// @description phases nya
// You can write your code in this editor

// switches between phases
switch (phase) 
{
	case 0: // phase 0 owo
		if not amount break
		
		// i have no fucking clue
		var type = amount % 2 == 0
		var spawn = type ? global.play_offset_width : global.play_width
		var dest = type ? global.play_width - 64 - 8 : global.play_offset_width + 64 + 8
		var fairy = instance_create_depth(spawn, global.play_offset_height, 0, obj_fairy)
		fairy.destination = dest
		fairy.movespeed = 3
		fairy.bulletspeed = 3
		fairy.maxbullet = 5
		alarm[0] = 60
		amount -= 1
		break
	
	case 1:
	
	break
}