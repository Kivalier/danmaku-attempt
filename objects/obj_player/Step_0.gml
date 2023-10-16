/// @description Insert description here
// You can write your code in this editor

// player controls
var xmove = keyboard_check(vk_right) - keyboard_check(vk_left);
var ymove = keyboard_check(vk_down) - keyboard_check(vk_up);

if [xmove, ymove] != 0
{
	move_and_collide(xmove * movespeed, ymove * movespeed, obj_wall, 4, 0, 0, movespeed, movespeed)
}

// player speed when shifting (2) otherwise it is 5
movespeed = keyboard_check(vk_shift) ? 2 : 5 
sprite_index = keyboard_check(vk_shift) ? spr_playershift : spr_player

// checks if i can shoot or not and press spacebar
if canshoot and keyboard_check(ord("Z"))  
{
	instance_create_depth(x-10, y-40, 0, obj_shoot)  // create bullets
	instance_create_depth(x+10, y-40, 0, obj_shoot)  // create bullets
	canshoot = false  // turn off canshoot
	alarm[0] = 5  // call alarm 0, which will turn on canshoot
}

if bomb > 0 and keyboard_check_pressed(ord("X"))
{
	instance_destroy(obj_fairy)
	instance_destroy(obj_bullet1)
	bomb--
}

if life < 1 {
	room_goto(room_gameover)
}