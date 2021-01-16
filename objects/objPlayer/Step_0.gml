if (speed != 0) {
	distance -= spd;
	
	if (distance <= 0) {
		speed = 0;
		action = "Stand";
	}
}

if (speed == 0) {
	if (keyboard_check(ord("D"))) {
		if (place_free(x+16, y)) {
			hspeed = spd;
			distance = 16;
			action = "Walk";
		}
		face = "R";
	} else if (keyboard_check(ord("A"))) {
		if (place_free(x-16, y)) {
			hspeed = -spd;
			distance = 16;
			action = "Walk";
		}
		face = "L";
	} else if (keyboard_check(ord("S"))) {
		if (place_free(x, y+16)) {
			vspeed = spd;
			distance = 16;
			action = "Walk";
		}
		face = "D";
	} else if (keyboard_check(ord("W"))) {
		if (place_free(x, y-16)) {
			vspeed = -spd;
			distance = 16;
			action = "Walk";
		}
		face = "U";
	}
}