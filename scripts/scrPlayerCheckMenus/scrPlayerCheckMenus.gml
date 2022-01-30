function scrPlayerCheckMenus(){
	if (keyboard_check_pressed(ord("I")) && speed == 0) {
		objInventoryBox.active = true;
		state = STATE_INVENTORY;
	}
}