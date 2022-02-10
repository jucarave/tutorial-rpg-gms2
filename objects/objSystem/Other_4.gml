if (playerStartPosition != noone) {
	objPlayer.x = playerStartPosition[0];
	objPlayer.y = playerStartPosition[1];
	objPlayer.face = playerStartPosition[2];
	
	playerStartPosition = noone;
}

mapGrid = mp_grid_create(0, 0, room_width / 16, room_height / 16, 16, 16);
mp_grid_add_instances(mapGrid, objBlock, false);