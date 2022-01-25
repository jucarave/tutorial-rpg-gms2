function scrUseKey(){
	var door = scrGetFacingObject();
	
	if (door != noone && variable_instance_exists(door, "lock")) {
		objPlayer.state = STATE_READING;
		objTextbox.callback = [scrFinishCharacterReading, [objPlayer, noone]];
		
		if (door.lock == ITEM_ID_KEY) {
			scrOpenTexbox("Has desbloqueado la puerta");
			door.lock = noone;
			return true;
		} else if (door.lock != noone) {
			scrOpenTexbox("La llave no encaja");
		} else {
			scrOpenTexbox("No pasa nada");
		}
	}
	
	return false;
}