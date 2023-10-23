/// @description Insert description here
// You can write your code in this editor

//

//if phase == 1 then alarm[1] = 300

// amount of faries to spawn
fairyamount = infinity
fairycount = 0

switch (++phase)
{
	case 0:
	break
	case 1:
		fairyamount = 3
		alarm[0] = 120 // fairy spawn time
		alarm[1] = 200 // pahse length
	break
	case 2:
	fairyamount = 2
	alarm[0] = 150
	alarm[1] = 300
	break
	case 3:
		fairyamount = 7
		alarm[0] = 120
		alarm[1] = 800
	break
	case 4:
		fairyamount = 1
		alarm[0] = 60
		alarm[1] = 500
	break
	case 5:
		fairyamount = 3
		alarm[0] = 60
		alarm[1] = 700
	break
	case 6:
		fairyamount = 1
		alarm[0] = 120
		alarm[1] = 1000
	break
	case 7:
		fairyamount = 1
		alarm[0] = 120
		alarm[1] = 700
	break
	case 8:
		fairyamount = 1
			alarm[0] = 60
		alarm[1] = 1000
	break
	case 9:
			alarm[0] = 60
		alarm[1] = 300
	break
	case 10:
			alarm[0] = 60
		alarm[1] = 300
	break
	case 11:
			alarm[0] = 60
		alarm[1] = 300
	break
	case 12:
			alarm[0] = 60
		alarm[1] = 300
	break
	case 13:
			alarm[0] = 60
		alarm[1] = 300
	break
	case 14:
			alarm[0] = 60
		alarm[1] = 300
	break
	case 15:

	default:
		
		alarm[0] = 60
		alarm[1] = 300
	break;
}