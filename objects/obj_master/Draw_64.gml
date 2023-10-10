/// @description Insert description here
// You can write your code in this editor

// phase counter
draw_set_font(-1)
draw_set_colour(c_blue)
draw_text(100, 50, "Phase:" + string(obj_spawner.phase))
draw_text(200, 50, "Phase:" + string(obj_spawner.alarm[1]))
//draw_text(100, 150, "Mode:" + string(obj_fairy.mode))

// High Score

draw_set_font(fnt_eosd)
draw_set_colour(c_white)
draw_text(672, 96, "High-Score: 999,999,999" )// + string (672, 160, obj_spawner.alarm[1])



// Score
draw_text(672, 160, "Score: 999,999,999")

// Graze
draw_text(672, 224, "Graze: 999,999,999")
