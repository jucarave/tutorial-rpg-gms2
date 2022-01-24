function scrFinishCharacterReading(player, npc) {
	player.state = STATE_IDLE;
	
	if (npc != noone) {
		npc.state = STATE_IDLE;
	}
}