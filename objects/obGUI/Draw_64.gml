/// @description Manejar la GUI


//Game Over fondo
if obControl.gameOver
{
	draw_set_alpha(0.9)
	draw_rectangle_colour(0, 0, 720, 1466, colorNegro, colorNegro, colorNegro, colorNegro, false);	
	
	//Ver video;
	draw_sprite_ext(spVerVideo, -1, global.room_halfx+25, 900,2,2,0,image_blend,image_alpha);
	image_index = 0;
	image_speed = 0;
		
}

//Puntuacion Actual 
draw_set_font(bitmapFont);
if !obControl.gameOver && room == room0
{
	draw_set_halign(fa_left);
	draw_sprite_ext(spLikeMano,-1,60,156,.8,.8,0,c_black,.5); //Sombra
	draw_sprite_ext(spLikeMano,-1,70,166,.8,.8,0,-1,1);
	draw_text_transformed_color(100,130,puntuacion,1,1,image_angle,c_black,c_black,c_black,c_black,.5); //Sombra Puntuacion
	draw_text_transformed_color(110,140,puntuacion,1,1,image_angle,c_white,c_white,c_white,c_white,1);	//Puntuacion
}
	
if obControl.gameOver || room == roomPrincipal
	{
		if obControl.gameOver
		{
			var theScore = puntuacion;
		}
		else
		{
			var theScore = mejorPuntuacion;
		}
		
		draw_set_halign(fa_center);
		draw_text_transformed_color(global.room_halfx-120,global.room_halfy-320,theScore,3,3,image_angle,c_black,c_black,c_black,c_black,.5); //Sombra Puntuacion
		draw_text_transformed_color(global.room_halfx-100,global.room_halfy-300,theScore,3,3,image_angle,c_white,c_white,c_white,c_white,1);	//Puntuacion
	}

if room == roomPrincipal 
{	
	
	draw_text_transformed_color(global.room_halfx-100,global.room_halfy-150,"BEST",1.5,1.5,image_angle,c_white,c_white,c_yellow,c_yellow,1);
}

//Best Score
if obControl.gameOver 
{

	if  !(mejorPuntuacion <= puntuacion)
	{
		draw_text_transformed_color(global.room_halfx-100,global.room_halfy-150,"BEST: " + string(mejorPuntuacion),1,1,image_angle,c_white,c_white,c_white,c_white,.9);
	}
	else
	{
		draw_set_halign(fa_center);
		draw_text_transformed_color(global.room_halfx-100,200,"NEW"+chr(13)+"BEST"+chr(13)+"SCORE!",2,2,0,c_white,c_yellow,c_white,c_yellow,1);

	}
}

if obControl.gameOver draw_text_transformed_color(global.room_halfx-100,global.room_halfy-150,"BEST: " + string(mejorPuntuacion),1,1,image_angle,c_white,c_white,c_white,c_white,.9);

if	instance_exists(obPlayer) 
{
	if obPlayer.volando && obPlayer.logoCombo
	{
		draw_set_halign(fa_center);
		draw_text_transformed_color(global.room_halfx-100,200,"SUPER"+chr(13)+"COMBO!",2,2,0,c_blue,c_white,c_red,c_blue,1);
	}
}

//Monedas
draw_set_halign(fa_left);
draw_sprite_ext(spMoneda,-1,60,86,.7,.7,0,c_black,.5); //Sombra
draw_sprite_ext(spMoneda,-1,70,96,.7,.7,0,-1,1);

if room != room0 monedas = monedasTotal;
draw_text_transformed_color(100,70,string(monedas),1,1,image_angle,c_black,c_black,c_black,c_black,.5);
draw_text_transformed_color(110,80,string(monedas),1,1,image_angle,c_yellow,c_yellow,c_yellow,c_yellow,1);

//Resetiar opacidad
draw_set_alpha(1);