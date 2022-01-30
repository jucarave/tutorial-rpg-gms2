if (!active) { exit; }

draw_self();

var inventorySize = min(ds_list_size(objSystem.inventory), 8);
for (var i=0;i<inventorySize;i++) {
	var posy = i * 16;
	var item = objSystem.inventory[| i];
	var itemDef = global.ITEMS[item[INVENTORY_ITEM]];
	
	draw_sprite(itemDef[ITEM_DEF_SPRITE], 0, x + 10, y + 5 + posy);

	draw_set_font(global.TEXTBOX_FONT);
	draw_text(x + 26, y + 6 + posy, itemDef[ITEM_DEF_NAME]);

	draw_set_halign(fa_right);
	draw_text(x + 99, y + 6 + posy, "x" + string(item[INVENTORY_QUANTITY]));
	draw_set_halign(fa_left);
}