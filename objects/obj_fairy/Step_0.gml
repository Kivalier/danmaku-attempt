/// @description Insert description here
// You can write your code in this editor

//y += speed
//x = min(x + movespeed, destination)

// i have no fucking clue


// checks if fairies are in the stage
if instance_is_in_stage() {
	fresh = false
}

// destroys fairies when outside stage
if not fresh and not instance_is_in_stage() {
	instance_destroy()
}

