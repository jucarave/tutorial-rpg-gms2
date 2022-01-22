function scrPlayerCheckInteraction(){
	if (keyboard_check_pressed(ord("E")) && speed == 0) {
		var interactive = scrGetFacingObject();
	
		if (interactive) {
			with (interactive) {
				event_user(0);
			}
		}
	}
}