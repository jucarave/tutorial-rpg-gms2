#region Movimiento
scrUpdateMovement();

if (speed == 0) {
	if (keyboard_check(ord("D"))) {
		scrMoveTo(1, 0);
	} else if (keyboard_check(ord("A"))) {
		scrMoveTo(-1, 0);
	} else if (keyboard_check(ord("S"))) {
		scrMoveTo(0, 1);
	} else if (keyboard_check(ord("W"))) {
		scrMoveTo(0, -1);
	}
}
#endregion

#region Interactuando
if (keyboard_check_pressed(ord("E"))) {
	var interactive = scrGetFacingObject();
	
	if (interactive) {
		with (interactive) {
			event_user(0);
		}
	}
}
#endregion