/// @description Movimiento siguiendo camino

if (state == STATE_IDLE) {
	var p = path[pathIndex];
	var xTo = p[0];
	var yTo = p[1];

	if (scrMoveTo(xTo, yTo)) {
		pathIndex += 1;
		if (pathIndex >= array_length(path)) {
			pathIndex = 0;
		}
	}
}

alarm[1] = room_speed * 1;