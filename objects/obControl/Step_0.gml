//Musica de fondo

//Teclas virtuales en la room principal
if room == roomPrincipal
{
	if keyboard_check(vk_enter)
	{
		/// @description Boton Play
		if !instance_exists(obTransicion)
		{
			if music == 1 audio_play_sound(sndHappy,1,1);
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
			global.dayState = 0;
			global.indexPista = 0;
			global.coinF = 1;
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
		global.dayState = 0;
		global.indexPista = 0;
		global.coinF = 1;
		if !audio_is_playing(sndEncender) && obControl.music == 1 audio_play_sound(sndEncender,1,0);
		if !audio_is_playing(sndHappy) && obControl.music == 1 audio_play_sound(sndHappy,1,1);
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
	case 20:
		global.indexPista = 1;
		break;
	case 40:
		global.indexPista = 2;
		break;
	case 80:
		global.indexPista = 3;
		global.dayState = 1; //night
		break;
	case 160:
		global.indexPista = 4;
		global.dayState = 0; //day
		break;
	case 320:
		global.indexPista = 5;
		break;
	case 500:
		global.indexPista = 6;
		break;
	case 800:
		global.indexPista = 7;
		break;
}