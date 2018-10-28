/// @description Delete-Velocity
if instance_exists(obNormalCar)
{
	y += 30;
}
else
{
	y += 40;
}


if place_meeting(x,y,obPlayer) && !obPlayer.volando
{
	obGUI.puntuacion+=10;
	//effect_create_above(ef_firework,160,150,5,c_blue);
	saving();
	if (obControl.combo != 15 && !obPlayer.volando) obControl.combo++;
	with(obPlayer)
	{	
		part_emitter_region(sistema_frases,emisor_frase,obPlayer.x-50,obPlayer.x+50,obPlayer.y-100,obPlayer.y,0,0);
		part_emitter_burst(sistema_frases,emisor_frase,particula_frase,10);
		instance_create_layer(x,y-200,"Player",obComboShow);
		if obControl.music == 1 audio_play_sound(sndLike,false,false);
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
	case 2:
		obControl.combo -=1;
		break;
	case 3:
		obControl.combo -=1;
		break;
	case 4:
		obControl.combo -=2;
		break;
	default: obControl.combo -=3;
	}
	instance_destroy();
}

if instance_exists(obNormalCar) image_xscale = obCrearCarros.image_xscale;

//Destruir en caso de salir de la pantalla.
if y >= room_height 
{
	instance_destroy();
}