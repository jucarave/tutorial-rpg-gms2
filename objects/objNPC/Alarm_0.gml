/// @description Movimiento aleatorio

if (state == STATE_IDLE) {
	var xTo = irandom_range(-1, 1);
	var yTo = (xTo == 0) ? irandom_range(-1, 1) : 0;

	if (xTo != 0 || yTo != 0) {
		scrMoveTo(xTo, yTo);
	}
}

alarm[0] = room_speed * 1;