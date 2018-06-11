if  iniciarJuego
{
	//Moverse hasta el punto de inicio
	if distance_to_point(x,yInicial) > 10
	{
		puedeMoverse = false;
		move_towards_point(x,yInicial,10);
	}
	else
	{
		speed = 0;
		puedeMoverse = true;
		iniciarJuego = false;
	}
}

if (!colision)
{
	//Controles Derecha y izquierda (INVERTIDOS)
	if puedeMoverse 
	{
		xDireccion = keyboard_check(vk_left) - keyboard_check(vk_right);
	}
}
else
{
	if !obControl.gameOver obCamara.agitar = 200;
	instance_create_depth(x,y,-1,obExplosion);
	alarm[0] = 15; 
	y = -600;
	colision = false;
	
	//Deterner sonidos
	audio_stop_sound(sndHappy); 
	audio_stop_sound(sndDerrape);
	audio_stop_sound(sndLike);
	audio_stop_sound(sndCoin)
	
	audio_play_sound(sndExplosion,10,false); //Sonido de explosion
}

////Aplicar movimiento en el eje X
x = xDireccion*20 + x;

///Angulo
if xDireccion != 0
{
	image_angle -= xDireccion*5;
	image_angle = clamp(image_angle,-35,35);
	
	//Derrape
	if abs(image_angle) > 30 
	{
		if !audio_is_playing(sndDerrape) && !obControl.gameOver audio_play_sound(sndDerrape,2,false); //Sonido de derrape
		
		part_emitter_region(sistema_derrape,emisor_derrape,x-10,x+10,y-10,y+10,ps_shape_rectangle,ps_distr_gaussian)
		part_emitter_burst(sistema_derrape,emisor_derrape,particula_derrape,10);
		part_emitter_burst(sistema_derrape,emisor_derrape,particula_derrape2,10);
	}
	else
	{
		audio_stop_sound(sndDerrape);
	}

}
else
{
	image_angle = lerp(image_angle,0,.7);
}
	


