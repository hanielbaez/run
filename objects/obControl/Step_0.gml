//Musica de fondo
//if !audio_is_playing(sndHappy) && !gameOver audio_play_sound(sndHappy,1,0);

//Teclas virtuales en la room principal
if room == roomPrincipal
{
	if keyboard_check(vk_enter)
	{
		/// @description Boton Play
		if !instance_exists(obTransicion)
		{
			//audio_play_sound(sndIniciar,1,false);//Sonido de encendido
			var transicionTemporal
			transicionTemporal = instance_create_depth(0,0,-999,obTransicion);
			transicionTemporal.irA = room0;
		}
	}
	
	if keyboard_check_released(ord("M"))
	{
		music = music * -1;
		if music == -1 
		{
			audio_stop_all();
		}
		else
		{
			if !audio_is_playing(sndHappy) audio_play_sound(sndHappy,1,1);
		}	
	}
	
	if keyboard_check_released(ord("L"))
	{
		achievement_show_leaderboards()
	}
	
}
	
//Teclas virtuales en room0
if room == room0
{
	//Ir a room Principal
	if keyboard_check(ord("H"))
	{
		/// @description Boton HOME
		if !instance_exists(obTransicion)
		{
			Load();
			var transicionTemporal
			transicionTemporal = instance_create_depth(0,0,-999,obTransicion);
			transicionTemporal.irA = roomPrincipal;
			if audio_is_playing(sndVictoria) audio_stop_sound(sndVictoria);
			global.distancia = 0;
			global.indexPista = 0;
			combo = 0;
		}
	}
	
	//Reiniciar juego
	if keyboard_check_released(ord("R")) 
	{
		/// @description Boton Try Again
		obControl.gameOver = false;
		obGUI.puntuacion = 0;
		obGUI.monedas = 0;
		obControl.combo = 0;
		global.distancia = 0;
		global.indexPista = 0;
		if audio_is_playing(sndVictoria) audio_stop_sound(sndVictoria);
		room_restart();
	}

}
else
{
	gameOver = false;
}

switch(global.distancia)
{
	case 50:
		global.indexPista = 1;
		break;
	case 90:
		global.indexPista = 2;
		break;
	case 160:
		global.indexPista = 3;
		break;
	case 300:
		global.indexPista = 4;
		break;
}