if (!active) { exit; }

draw_self();

var inventorySize = ds_list_size(objSystem.inventory);
var i1 = max(cursor - 3, 0);
if (i1 + 8 >= inventorySize) { i1 = max(inventorySize - 8, 0); }

var i2 = min(i1 + 8, inventorySize);

var posy = 0;

for (var i=i1;i<i2;i++) {
	var item = objSystem.inventory[| i];
	var itemDef = global.ITEMS[item[INVENTORY_ITEM]];
	
	draw_sprite(itemDef[ITEM_DEF_SPRITE], 0, x + 10, y + 5 + posy);

	draw_set_font(global.TEXTBOX_FONT);
	draw_text(x + 26, y + 6 + posy, itemDef[ITEM_DEF_NAME]);

	draw_set_halign(fa_right);
	draw_text(x + 99, y + 6 + posy, "x" + string(item[INVENTORY_QUANTITY]));
	draw_set_halign(fa_left);
	
	if (i == cursor) {
		draw_sprite(sprInventoryCursor, 0, x + 6, y + 10 + posy);
	}
	
	posy += 16;
}