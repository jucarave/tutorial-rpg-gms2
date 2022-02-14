scrOpenTexbox("Recogistes una " + name);

objPlayer.state = STATE_READING;
objTextbox.callback = [scrFinishCharacterReading, [objPlayer, noone]];

addItem(itemId, quantity);

instance_destroy();

global.FLAGS[flagId] = true;