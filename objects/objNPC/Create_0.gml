scrCreateCharacter("NPC");

alarm[2] = room_speed * 3;
state = STATE_IDLE;
movementType = "followPlayer";

path = [
	[0, -1],
	[-1, 0],
	[-1, 0],
	[-1, 0],
	[-1, 0],
	[-1, 0],
	[0, 1],
	[0, 1],
	[1, 0],
	[1, 0],
	[1, 0],
	[1, 0],
	[1, 0],
	[0, -1]
];
pathIndex = 0;