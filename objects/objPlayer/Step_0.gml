if (speed != 0) {
	distance -= spd;
	
	if (distance <= 0) {
		speed = 0;
		action = "Stand";
	}
}

if (speed == 0) {
	if (keyboard_check(ord("D"))) {
		hspeed = spd;
		distance = 16;
		action = "Walk";
		face = "R";
	} else if (keyboard_check(ord("A"))) {
		hspeed = -spd;
		distance = 16;
		action = "Walk";
		face = "L";
	} else if (keyboard_check(ord("S"))) {
		vspeed = spd;
		distance = 16;
		action = "Walk";
		face = "D";
	} else if (keyboard_check(ord("W"))) {
		vspeed = -spd;
		distance = 16;
		action = "Walk";
		face = "U";
	}
}