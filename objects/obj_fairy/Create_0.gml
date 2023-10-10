/// @description Insert description here
// You can write your code in this editor

//destination = (global.play_width - global.play_offset_width) / 2

enum FAIRY_MODE {
	TARGETING = 0,
	NORMAL = 1,
}

// Has this fairy been in the stage yet
fresh = true

// type of bullet fired 
mode = FAIRY_MODE.TARGETING

// the maximum amount of bullets, 0 to disable
maxbullet = 0

// amount of bullets held
bulletcounter = 0

 //bullet spawner
alarm[0] = 20