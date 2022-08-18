//stack items when dragging and they collide

if (itemId == other.itemId && dragging == false) {
	itemQuantity += other.itemQuantity;
	instance_destroy(other);
}