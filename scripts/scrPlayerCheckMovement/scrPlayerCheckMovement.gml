function scrPlayerCheckMovement(){
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
}