switch (state) {
	case STATE_IDLE:
		if (scrUpdateMovement() && movementType == "followPlayer") {
			alarm[2] = 1;
		}
		break;
}