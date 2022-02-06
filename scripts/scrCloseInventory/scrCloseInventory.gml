function scrCloseInventory(){
	objInventoryBox.active = false;
	objItemDetail.item = noone;
	objItemDetail.itemDef = noone;
	state = STATE_IDLE;
}