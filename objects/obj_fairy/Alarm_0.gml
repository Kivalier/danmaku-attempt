/// @description Insert description here
// You can write your code in this editor


// if maxbullet is lower or equal to bulletcounter then we do nothing
// we skip execution, basically
//show_debug_message(string(maxbullet) + " " + string(bulletcounter)) 
if (maxbullet and maxbullet <= bulletcounter) 
{
	return
}

alarm[0] = 20
var bullet = instance_create_depth(x,y,0,obj_bullet1)
bulletcounter++

// switches between different phases
switch (mode)
{
	// phase 0
	case 0:
		bullet.direction = point_direction(x, y, obj_player.x, obj_player.y)
		bullet.speed = bulletspeed
	break
	
	case 1:
	
	break
	
	case 2:
	
	break
}
