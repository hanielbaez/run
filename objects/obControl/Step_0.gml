//Fin del juego
if gameOver
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
}

if room == roomPrincipal
{
	if keyboard_check(vk_enter)
	{
		room_goto(room0)
	}
}
else
{
	virtual_key_delete(vk_iniciar);
}
	