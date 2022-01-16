function scrMoveTo(xTo, yTo){
	scrFaceTo(x+16*xTo, y+16*yTo);
	
	if (place_free(x+16*xTo, y+16*yTo)) {
		hspeed = spd * xTo;
		vspeed = spd * yTo;
		distance = 16;
		action = "Walk";
		return true;
	}
	
	return false;
}