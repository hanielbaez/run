//Fin del juego
if gameOver
{	
	////Botones virtuale TryAgain 
	v_tryAgain = virtual_key_add(150, 1100, 450, 100, ord("R"));
	//virtual_key_show(v_tryAgain);
	
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
	
	//Limpiar efecto de particulas.
	effect_clear();
	
}