function scrMoveTo(xTo, yTo){
	if (place_free(x+16*xTo, y+16*yTo)) {
		hspeed = spd * xTo;
		vspeed = spd * yTo;
		distance = 16;
		action = "Walk";
	}
	scrFaceTo(x+16*xTo, y+16*yTo);
}