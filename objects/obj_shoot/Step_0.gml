/// @description Insert description here
// You can write your code in this editor

// player bullet speed
y -= 20

// destroys player shot when outside stage
if not instance_is_in_stage() then instance_destroy()
