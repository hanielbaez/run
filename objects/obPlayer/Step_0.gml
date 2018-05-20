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
		xDireccion = keyboard_check_pressed(vk_left) - keyboard_check_pressed(vk_right);
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

//Modificar Movimiento y Angulo
if xDireccion != 0 
{
	if puedeMoverse
	{
		//Movimiento en el eje X
		xMovimiento = (xDireccion * room_width/3) + x;
		puedeMoverse = false;
	}
	//Angulo
	image_angle += xDireccion*10;
	if !colision obCamara.agitar += 1.5; //Pequeno terremoto 
	image_angle = clamp(image_angle,-30,30);
}

//Hacer que el vehiculo regrese a su angulo inicial.
else
{
	image_angle = lerp(image_angle,0,.6);
}

//Aplicar movimiento
if distance_to_point(abs(xMovimiento), y) > velocidad 
{
	if xMovimiento != 0 && speed == 0 
	{
		move_towards_point(xMovimiento, y, velocidad);
	}
}
else
{
	speed = 0;
	puedeMoverse = true;
}
	
//REINICIAR JUEGO
if keyboard_check_released(ord("R")) 
{
	obControl.gameOver = false;
	obGUI.puntuacion = 0;
	obGUI.monedas = 0;
	room_restart();
}
