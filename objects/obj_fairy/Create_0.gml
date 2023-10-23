/// @description Insert description here
// You can write your code in this editor

//destination = (global.play_width - global.play_offset_width) / 2

enum FAIRY_MODE {
	NORMAL = 0,
	TARGETING = 1,
	RANDOM = 2,
	RAINBOW = 3,
	SLOW = 4,
	TWO = 5,
	THREE = 6,
}

image_xscale = 0.7
image_yscale = 0.7

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

hp = 10

dest = []

death = false

//bullettype = 2
