if (pages == noone) { exit; }

var _x = 37;
var _y = 124;

draw_sprite(sprTextbox, 0, _x, _y);

draw_set_font(global.TEXTBOX_FONT);
draw_text_ext(_x + 8, _y + 4, textOnDisplay, 10, 230);