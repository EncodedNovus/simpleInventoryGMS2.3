//make the item move with the mouse and stop where you click

if (dragging == true) {
	x = mouse_x-sprite_width/2;
	y = mouse_y-sprite_height/2;
	depth = -1;
} else if (dragging == false) {
	x = x;
	y = y;
	depth = 0;
}