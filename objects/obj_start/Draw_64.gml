/// @description Insert description here
// You can write your code in this editor

draw_set_font(fnt_eosd)
draw_set_colour(c_white)
draw_set_valign(fa_middle)
draw_set_halign(fa_center)
draw_text(x, y, "Game Start")

//draw_text = keyboard_check_pressed(ord("L")) ? (x, y, "Maori") : (x, y, "Game Start") 


if keyboard_check(ord("L")) {
	draw_text (x, y, "Maori")
}

//if global.langague = "E"{
//	draw_text (x, y, "Game Start")
//} else if global.langauge = "M"{
//	draw_text (x, y, "Maori")
//}


// player speed when shifting (2) otherwise it is 5
//movespeed = keyboard_check(vk_shift) ? 2 : 5 
//sprite_index = keyboard_check(vk_shift) ? spr_playershift : spr_player

//global.langauge = "E" ? draw_text(x, y, "Maori") : draw_text(x, y, "English")