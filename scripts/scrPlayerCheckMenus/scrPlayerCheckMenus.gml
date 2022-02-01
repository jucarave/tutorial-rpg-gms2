function scrPlayerCheckMenus(){
	if (keyboard_check_pressed(ord("I")) && speed == 0) {
		objInventoryBox.active = true;
		objInventoryBox.cursor = 0;
		state = STATE_INVENTORY;
	}
}