function scrUpdateMovement(){
	if (speed != 0) {
		distance -= spd;
	
		if (distance <= 0) {
			speed = 0;
			action = "Stand";
			
			x = floor((x + 1) / 16) * 16;
			y = floor((y + 1) / 16) * 16;
			
			return true;
		}
	}
	
	return false;
}