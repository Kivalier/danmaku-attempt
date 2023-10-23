/// @description Insert description here
// You can write your code in this editor

if obj_player.life < 1 {
	phase = 9
	instance_destroy(obj_fairy)
	instance_destroy(obj_bullet1)

}

if phase > 8 {
	obj_master_game.count = false
	phase = 9
	if instance_exists(obj_fairy) then begin obj_fairy.hp -= 500 end else return
	if instance_exists(obj_bullet1) then begin instance_destroy(obj_bullet1) end

}







