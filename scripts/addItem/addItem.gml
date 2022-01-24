function addItem(itemId, quantity){
	var item = getItem(itemId);
	var itemDef = global.ITEMS[itemId];
	
	if (item != noone) {
		item[@ INVENTORY_QUANTITY] = clamp(item[INVENTORY_QUANTITY] + quantity, 1, itemDef[ITEM_DEF_MAX]);
	} else {
		item[INVENTORY_ITEM] = itemId;
		item[INVENTORY_QUANTITY] = clamp(quantity, 1, itemDef[ITEM_DEF_MAX]);
	
		ds_list_add(objSystem.inventory, item);
	}
}