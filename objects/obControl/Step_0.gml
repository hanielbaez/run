//Fin del juego
if gameOver && soloUnaVez
{	
	tryAgainX = 150;
	tryAgainY = 1100;
	
	//Sistema de guardado
	if file_exists("Save.sav")
	{
		var LoadFile = file_text_open_read("Save.sav");
		var LoadPuntuacion = file_text_read_real(LoadFile);
		file_text_close(LoadFile);
		
		if LoadPuntuacion > obGUI.puntuacion
		{
			 obGUI.mejorPuntuacion = LoadPuntuacion;
		}
		else
		{
			file_delete("Save.sav");
			var saveFile = file_text_open_write("Save.sav")
			var savePuntuacion = obGUI.puntuacion;
			file_text_write_real(saveFile, savePuntuacion);
			file_text_close(saveFile);
			
			obGUI.mejorPuntuacion = obGUI.puntuacion;
			
		}
		
		
	}
	
	soloUnaVez = false;
}

//Teclas virtuales en la room principal
if room == roomPrincipal
{
	if keyboard_check(vk_enter)
	{
		alarm[0] = room_speed;
	}
}
	
//Teclas virtuales en room0
if room == room0
{
	//Ir a room Principal
	if keyboard_check(ord("H"))
	{
		alarm[1] = room_speed;
	}
	
	//Reiniciar juego
	if keyboard_check_released(ord("R")) 
	{
		alarm[2] = room_speed;
	}

}
