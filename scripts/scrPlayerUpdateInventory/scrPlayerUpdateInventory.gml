function scrPlayerUpdateInventory(){
	if (keyboard_check_pressed(ord("I"))) {
		objInventoryBox.active = false;
		state = STATE_IDLE;
	}
	
	var ver = keyboard_check_pressed(ord("S")) - keyboard_check_pressed(ord("W"));
	if (ver != 0) {
		objInventoryBox.cursor = clamp(objInventoryBox.cursor + ver, 0, ds_list_size(objSystem.inventory) - 1);
	}
}