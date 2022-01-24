function getItem(itemId){
	var length = ds_list_size(objSystem.inventory);
	
	for (var i=0;i<length;i++) {
		var item = objSystem.inventory[| i];
		
		if (item[INVENTORY_ITEM] == itemId) {
			return item;
		}
	}
	
	return noone;
}