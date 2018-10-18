///@description Acciones del player
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
		//xDireccion = keyboard_check(vk_left) - keyboard_check(vk_right);
	}
	
	//Rastro de velocidad
	if !instance_exists(obAmbulancia) && room == room0
	{
		part_emitter_region(systemRastro,emiteRastro,x,x,y,y,ps_shape_rectangle,ps_distr_gaussian)
		part_emitter_stream(systemRastro,emiteRastro,partRastro,1);
	}
	else
	{
		part_particles_clear(systemRastro)
	}
}
else
{
	if !obControl.gameOver obCamara.agitar = 100;
	alarm[0] = 15; 
	//x = -500;
	y = 2500;
	colision = false;
	audio_stop_all(); 	//Deterner sonidos
	if SplashSound == false
	{
		instance_create_depth(x,y,-1,obExplosion);
	}
	else
	{
		if !audio_is_playing(sndSplash) && obControl.music == 1 audio_play_sound(sndSplash,2,false); //Sonido de derrape
	}
	
	if obControl.music == 1 && !(obGUI.mejorPuntuacion <= obGUI.puntuacion) 
	{
		alarm[1] = room_speed;
	}
	
}

///Aplicar movimiento en el eje X
x = xDireccion*40 + x;
if instance_exists(obPista)
{
	if obPista.image_index !=5 x = clamp(x,350,600);
}

//Angulo
if xDireccion != 0 && !(x <= 350 || x >= 600)
{
	image_angle -= xDireccion*15;
	image_angle = clamp(image_angle,-35,35);
	
	//Derrape
	if abs(image_angle) > 30 && !volando
	if abs(image_angle) > 25 
	{
		if !audio_is_playing(sndDerrape) && !obControl.gameOver && obControl.music == 1 audio_play_sound(sndDerrape,2,false); //Sonido de derrape
		
		part_emitter_region(sistema_derrape,emisor_derrape,x-10,x+10,y-10,y+10,ps_shape_rectangle,ps_distr_gaussian)
		part_emitter_burst(sistema_derrape,emisor_derrape,particula_derrape,10);
		part_emitter_burst(sistema_derrape,emisor_derrape,particula_derrape2,10);

	}
}
else
{
	audio_stop_sound(sndDerrape); //Detener sonido de derrape
	image_angle = lerp(image_angle,0,.7);
}
	
//Volar --COMBO
if obControl.combo == 15 volando = true;

if volando
{
	image_xscale = lerp(image_xscale,1.5,0.1);
	image_yscale = image_xscale;
	sombraX = lerp(sombraX,100,0.1);
	if !instance_exists(obAlasCombo) instance_create_depth(x,y,10,obAlasCombo); //Alas Combo
}
else
{
	image_xscale = lerp(image_xscale,1.1,0.1);
	image_yscale = image_xscale;
	sombraX = lerp(sombraX,10,0.1);
}

if distance_to_object(obMoneda) > 200 global.coinF = 1;

