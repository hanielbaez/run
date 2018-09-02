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
		xDireccion = keyboard_check(vk_left) - keyboard_check(vk_right);
	}
	
	//Rastro de velocidad
	if !instance_exists(obAmbulancia)
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
	if !obControl.gameOver obCamara.agitar = 200;
	instance_create_depth(x,y,-1,obExplosion);
	alarm[0] = 15; 
	//x = -500;
	y = 2500;
	colision = false;
	
	//Deterner sonidos
	audio_stop_all();
	
	var FailSound = choose(sndBadOutCome,sndBreakdown,sndCompleteFailure,sndDeadDuck,sndDisaster,sndDownFall,sndEpicFail,
							sndFail,sndFailure,sndFlameOut,sndGameOver,sndItOver,sndLoser,sndNeedPractice,sndNextTime,
							sndNoTwo,sndNoFaith,sndNoMan,sndNoNoNo,sndNo,sndNoThisWay,sndOneMistake,sndOuch,sndRidiculous,
							sndSoBad,sndStarItOver,sndTerrible,sndTerribleTwo,sndThatIsFail,sndThatMistake,sndThaIsError,sndTooBad,
							sndTryItAgain,sndWannaGiveUp,sndWashOut,sndWhatShame,sndWhaHaveDone,sndWrongWay,sndYouDied,sndYuoFailed,
							sndYuoFailedTwo,sndYouGoWrong,sndYouSuck,sndYouWereDefeat,sndYouWereDefeat,sndYouAreOut);
	
	if obControl.music == 1 && !(obGUI.mejorPuntuacion <= obGUI.puntuacion) 
	{
		audio_play_sound(FailSound,10,false); //Sonido de explosion
	}
	
	
	
}

///Aplicar movimiento en el eje X
x = xDireccion*20 + x;
x = clamp(x,290,640);
///Angulo
if xDireccion != 0 && !(x <= 290 || x >= 640)
{
	image_angle -= xDireccion*5;
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

