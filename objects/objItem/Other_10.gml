scrOpenTexbox("Recogistes una " + name);

objPlayer.state = STATE_READING;
objTextbox.callback = [scrFinishCharacterReading, [objPlayer, noone]];

addItem(itemId, quantity);

for (var i=1;i<10;i++) {
	addItem(i, 1);	
}

instance_destroy();