/// @description Insert description here
// You can write your code in this editor

//draw_set_colour(c_red)
//draw_set_font(fnt_indev)
//draw_text(352, 752, "Game is currently in the INDEV phase. Features and final game design subject to change.")
//// phase counter
//draw_set_font(-1)
//
//draw_text(125, 16, "Phase:" + string(obj_spawner.phase))
//
//draw_text(225, 16, "Phase:" + string(obj_spawner.alarm[1]))
//
//draw_text(425, 16, "Fps:" + string(fps) + " / " + string(fps_real))
//
//draw_text(555, 16, "Objects: " + string(instance_count))

draw_set_colour(c_white)
draw_set_font(fnt_eosdbig)
draw_set_halign(fa_center)

draw_text(832, 64, get_lng_var("game_title"))

draw_set_font(fnt_eosd)


//var sillytext = string_hash_to_newline("Highscore#" + string(highscore))
//draw_text(832, 160, sillytext)
draw_text(832, 160, get_lng_var("game_hiscore"))// + string(string_replace_all(string_format(highscore, 9, 0), " ", "0")))
draw_text(832, 201, string_comma(string_padding(highscore, 9)))

draw_text(832, 256, get_lng_var("game_score"))
draw_text(832, 297, string_comma(string_padding(playerscore, 9)))

draw_text(832, 480, get_lng_var("game_bomb") + string(obj_player.bomb))

draw_text(832, 544, get_lng_var("game_life") + string(obj_player.life))


//draw_text(832, 352, "Graze: 999,999,999")
