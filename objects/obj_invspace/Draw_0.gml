//draw sprites
if (spaceOccupied == true) {
	draw_self();
	draw_sprite(invItem[invItemId,2],0,x,y);
} else {
	draw_self();	
}