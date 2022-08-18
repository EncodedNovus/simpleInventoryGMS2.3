//get the item that's colliding with the inv slot if you're dragging it
itemObj = instance_place(x,y, itemObjId);


if (spaceOccupied == false && itemObj != noone) {
	//place an item you're dragging into an empty inv slot
	spaceOccupied = true;
	invItemId = itemObj.itemId;
	invItem[invItemId] = scr_itemInfo(invItemId);
	invSlotItemQuantity += itemObj.itemQuantity;
	instance_destroy(itemObj); 
	
	} else if (spaceOccupied == true && itemObj != noone && invItemId == itemObj.itemId) {		
		//adds the item's quantity that you are dragging to the inv slot if it's the same item
		invSlotItemQuantity += itemObj.itemQuantity;
		instance_destroy(itemObj);		
		
			} else if (spaceOccupied == true && itemObj != noone && invItemId != itemObj.itemId) {
				//if dragging an item to an inventory slot and you click an occupied spot, switch them out
				var pickupItem = invItem[invItemId, 3];
				var pickupItemQuantity = invSlotItemQuantity;						
				invItemId = itemObj.itemId;
				invItem[invItemId] = scr_itemInfo(invItemId);
				invSlotItemQuantity = itemObj.itemQuantity;
				instance_destroy(itemObj);		
				with instance_create_depth(mouse_x, mouse_y, 0, pickupItem)
				{ 				
					dragging = true;				
					itemQuantity = pickupItemQuantity;
				}
					} else if (spaceOccupied == true) {		
						//pickup an item from the inv slot and clear the slot
						pickupItem = invItem[invItemId, 3];
							with instance_create_depth(mouse_x, mouse_y, 0, pickupItem)
							{ 				
								dragging = true;				
								itemQuantity = other.invSlotItemQuantity;
							}		
						spaceOccupied = false;
						invItemId = 0;
						invItem[invItemId] = scr_itemInfo(invItemId);
						invSlotItemQuantity = 0;			
}




