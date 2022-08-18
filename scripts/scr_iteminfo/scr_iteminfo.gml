// returns an items information
// return [item's id, "item's description", item's sprite, item's object];
function scr_itemInfo(itemID){
	switch(itemID) {
		case 1:
			return [1, "An ordinary apple.", spr_apple, obj_apple];
		break;
		case 2:
			return [2, "A sharp looking dagger.", spr_dagger, obj_dagger];
		break;
		case 3:
			return [3, "A freshly chopped log.", spr_log, obj_log];
		break;		
		default:
			return [0, "", spr_invSpace, obj_invSpace];
		break;		
	}
}