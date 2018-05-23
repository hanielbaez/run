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
	obCamara.agitar = 150;
	create_explosion(x,y);
	alarm[0] = 15; 
	y = -170;
	colision = false;
}

////Aplicar movimiento en el eje X
x = xDireccion*20 + x;

///Angulo
if xDireccion != 0
{
	image_angle += xDireccion*5;
	image_angle = clamp(image_angle,-30,30);
	if !colision obCamara.agitar += 1.5; //Pequeno terremoto 
	
	//Derrape
	if obCamara.agitar > 8
	{
		part_emitter_region(sistema_derrape,emisor_derrape,x-10,x+10,y-10,y+10,ps_shape_rectangle,ps_distr_gaussian)
		part_emitter_burst(sistema_derrape,emisor_derrape,particula_derrape,10);
	}

}
else
{
	image_angle = lerp(image_angle,0,.6);
}
	
//REINICIAR JUEGO
if keyboard_check_released(ord("R")) 
{
	obControl.gameOver = false;
	obGUI.puntuacion = 0;
	obGUI.monedas = 0;
	room_restart();
}
