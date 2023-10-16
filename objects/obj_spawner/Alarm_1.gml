/// @description Insert description here
// You can write your code in this editor

//

//if phase == 1 then alarm[1] = 300

// amount of faries to spawn
fairyamount = infinity
fairycount = 0

switch (++phase)
{
	case 1:
		fairyamount = 6
		alarm[0] = 60
		alarm[1] = 400
	break
	case 3:
		fairyamount = 10
		alarm[0] = 120
		alarm[1] = 500
	break
	case 4:
		fairyamount = 10
		alarm[0] = 120
		alarm[1] = 500
	break
	case 6:
		fairyamount = 30
		alarm[0] = 120
		alarm[1] = 700
	break
	default:
		
		alarm[0] = 60
		alarm[1] = 300
	break;
}