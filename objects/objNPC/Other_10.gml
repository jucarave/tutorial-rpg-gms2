if (speed != 0) { exit; }

scrOpenTexbox("Hola mundo y bienvenido a un nuevo tutorial de Game Maker Studio 2 donde vamos a ver como implementar cajas de texto");
scrFaceTo(objPlayer.x, objPlayer.y);

state = STATE_READING;
objPlayer.state = STATE_READING;

objTextbox.callback = [scrFinishCharacterReading, [objPlayer, id]];