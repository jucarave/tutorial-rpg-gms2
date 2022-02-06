if (item == noone) { exit; }

draw_self();

draw_set_font(global.TEXTBOX_FONT);

draw_sprite(itemDef[ITEM_DEF_SPRITE], 0, x + 5, y + 5);

draw_text(x + 21, y + 5, itemDef[ITEM_DEF_NAME]);

draw_text_ext(x + 5, y + 21, itemDef[ITEM_DEF_DESCRIPTION], 10, 190);

draw_set_halign(fa_right);
draw_text(x + 193, y + 5, "x" + string(item[INVENTORY_QUANTITY]));
draw_set_halign(fa_left);