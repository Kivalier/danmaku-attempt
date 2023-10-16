/// @description Insert description here
// You can write your code in this editor

if keyboard_check_pressed(ord("L"))and global.language="E" begin
    global.language="M"
end else if keyboard_check_pressed(ord("L")) and global.language="M" begin
    global.language="E"
end


if global.language = "E"{
	sprite_index = engtitle
}else{
	sprite_index = maorititle
}



