/// @description Perseguir al jugador

if (state == STATE_IDLE) {
	var path = scrFindPath(x, y, objPlayer.x, objPlayer.y);
	if (array_length(path) > 0) {
		var p = path[0];
		var xTo = (p[0] - x - 8) / 16;
		var yTo = (p[1] - y - 8) / 16;
	
		scrMoveTo(xTo, yTo);
	}
}

alarm[2] = room_speed * 1;