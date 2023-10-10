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
	// mode 0
	case FAIRY_MODE.TARGETING: {
		var bullet = instance_create_bullet(x, y, "red", 1, .25)
		bullet.direction = point_direction(x, y, obj_player.x, obj_player.y)
		
		break
	}
	// mode 1
	case FAIRY_MODE.NORMAL: {
		var bullet = instance_create_bullet(x, y, "blue", 3, .10)
		bullet.direction = DIRECTION.DOWN
		
		break
	}
	
	// mode 2
	case 2:
	
	break
}
