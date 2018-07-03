/// @description Insert description here
// You can write your code in this editor
y += velocidad;

if place_meeting(x,y,obPlayer) && !obPlayer.volando
{
	obGUI.puntuacion++;
	saving();
	if (obControl.combo != 15 && !obPlayer.volando) obControl.combo++;
	with(obPlayer)
	{	
		part_emitter_region(sistema_frases,emisor_frase,obPlayer.x-50,obPlayer.x+50,obPlayer.y-100,obPlayer.y,0,0);
		part_emitter_burst(sistema_frases,emisor_frase,particula_frase,1);
		audio_play_sound(sndLike,false,false);
	}

	instance_destroy();
}

if y >= room_height && !obPlayer.volando
{
	switch obControl.combo
	{
	case 0:
		break;
	case 1:
		obControl.combo -=1;
		break;
	default: obControl.combo -=2;
	}
	instance_destroy();
}


//Destruir en caso de salir de la pantalla.
if y >= room_height instance_destroy();

