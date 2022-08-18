//draw the item quantity and description
if (spaceOccupied == true && drawDesc == true) {
		scr_draw_text_color_outline(x+sprite_height/2, y+sprite_height/2, invSlotItemQuantity, c_black, c_black, 100, c_yellow, c_yellow, 100, 1.5, 100, 1, 1, 0);
		scr_draw_text_color_outline(mouse_x-18, mouse_y+18, invItem[invItemId, 1], c_black, c_black, 100, c_yellow, c_yellow, 100, 1.5, 100, 1, 1, 0);
		
	} else if (spaceOccupied == true && drawDesc == false) {
			scr_draw_text_color_outline(x+sprite_height/2, y+sprite_height/2, invSlotItemQuantity, c_yellow, c_yellow, 100, c_black, c_black, 100, 1.5, 100, 1, 1, 0);
			
}