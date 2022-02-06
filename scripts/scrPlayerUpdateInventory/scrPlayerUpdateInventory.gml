function scrPlayerUpdateInventory(){
	if (keyboard_check_pressed(ord("I"))) {
		scrCloseInventory();
	}
	
	if (objItemDetail.item == noone) {
		var ver = keyboard_check_pressed(ord("S")) - keyboard_check_pressed(ord("W"));
		if (ver != 0) {
			objInventoryBox.cursor = clamp(objInventoryBox.cursor + ver, 0, ds_list_size(objSystem.inventory) - 1);
		}
	
		if (keyboard_check_pressed(ord("E"))) {
			objItemDetail.item = objSystem.inventory[| objInventoryBox.cursor];
			objItemDetail.itemDef = global.ITEMS[objItemDetail.item[INVENTORY_ITEM]];
		}
	} else {
		if (keyboard_check_pressed(ord("E"))) {
			var itemId = objItemDetail.item[INVENTORY_ITEM];
			scrCloseInventory();
			useItem(itemId);
		}
		
		if (keyboard_check_pressed(ord("Q"))) {
			objItemDetail.item = noone;
			objItemDetail.itemDef = noone;
		}
	}
}