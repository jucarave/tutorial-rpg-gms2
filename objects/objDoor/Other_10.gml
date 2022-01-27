if (lock != noone) {
	scrOpenTexbox("La puerta esta cerrada con llave");
	objPlayer.state = STATE_READING;
	objTextbox.callback = [scrFinishCharacterReading, [objPlayer, noone]];
	
	exit;
}

objSystem.playerStartPosition = targetPlayerPosition;
room_goto(targetRoom);