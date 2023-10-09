/// @description Insert description here
// You can write your code in this editor

y += movespeed
//x = min(x + movespeed, destination)

// i have no fucking clue
x = x > destination ? max(x - movespeed, destination) : min(x + movespeed, destination)


// destroys fairies when below screen
if y >= room_height then instance_destroy()
