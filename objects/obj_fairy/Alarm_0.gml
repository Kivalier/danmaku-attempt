/// @description Insert description here
// You can write your code in this editor


// if maxbullet is lower or equal to bulletcounter then we do nothing
// we skip execution, basically
//show_debug_message(string(maxbullet) + " " + string(bulletcounter)) 
if maxbullet and maxbullet <= bulletcounter then begin return end


alarm[0] = 20

bulletcounter++

// switches between different bullet mode / phases
switch (mode)
{
	case FAIRY_MODE.NORMAL: {
		var bullet			= instance_create_bullet(x, y, "blue", 3, .10)
		bullet.direction	= DIRECTION.DOWN

		alarm[0] = 60
		break
	}
	case FAIRY_MODE.TARGETING: {
		var bullet			= instance_create_bullet(x, y, "red", 3, .25)
		bullet.direction	= point_direction(x, y, obj_player.x, obj_player.y)
		alarm[0] = 80
		break
	}
	case FAIRY_MODE.RANDOM: { 
		var bullet			= instance_create_bullet(x, y, "green", 4, .20)
		bullet.direction	= irandom_range(-180, 0)
		alarm[0] = 20
		break
	}
	case FAIRY_MODE.RAINBOW: 
		//chimata
		break
	case FAIRY_MODE.SLOW: {
		var bullet			= instance_create_bullet(x, y, "red", 3,.15)
		bullet.direction	= point_direction(x, y, obj_player.x, obj_player.y)
		alarm[0] = 90
	
		break
	}
	case FAIRY_MODE.TWO: {
	var dir = [25, -25]
	for (var i = 0; i < array_length(dir); i++) {
		var bullet		 = instance_create_bullet(x, y, "blue", 3, .20)
		bullet.direction = DIRECTION.DOWN + dir[i]
	}
	
	alarm[0] = 60
	
	break
	}
	case FAIRY_MODE.THREE: {
	var dir = [25, -25, 0]
	for (var i = 0; i < array_length(dir); i++) {
		var bullet		 = instance_create_bullet(x, y, "blue", 3, .20)
		bullet.direction = DIRECTION.DOWN + dir[i]
	}
	
	alarm[0] = 60
	
	break
	}
}

//switch (bullettype)
//{
	//case 1:{
	//	
	//break
	//}
//	case 2:{
	//	instance_create_bullet(x, y, "blue", 5, .5) {
	//	}
//	}
	//var bullet = instance_create_depth(x, y, 0, obj_bullet1)
	//bullet.sprite_index = bullets[$ colour]
	//bullet.speed		  = _speed
	//bullet.image_xscale = scale
	//bullet.image_yscale = scale
//	break
//}
