/// @description Insert description here
// You can write your code in this editor

// M1 the button to play game

//if global.language = "E" {
//	global.language = "M"
//} else 
//	if keyboard_check_pressed(ord("L")) and global.language="M" {
 //   global.language="E"
//	}

global.language = global.language == "E" ? "M" : "E"

room_goto(room_menu)




