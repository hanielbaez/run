/// @description Manejar la GUI

//Game Over fondo
if obControl.gameOver
{
	//Fondo negro
	draw_set_alpha(0.5)
	draw_rectangle_colour(0, 0, 720, 1466, colorNegro, colorNegro, colorNegro, colorNegro, false);	
		
}

//Puntuacion Actual 
draw_set_font(bitmapFont);
if !obControl.gameOver && room == room0
{
	draw_set_halign(fa_left);
	draw_sprite_ext(spLikeMano,-1,60,156,.8,.8,0,c_black,.5); //Sombra
	draw_sprite_ext(spLikeMano,-1,70,166,.8,.8,0,-1,1);
	draw_text_transformed_color(100,150,puntuacion,.7,.7,image_angle,c_black,c_black,c_black,c_black,.5); //Sombra Puntuacion
	draw_text_transformed_color(110,160,puntuacion,.7,.7,image_angle,c_white,c_white,c_white,c_white,1); //Puntuacion

}

if room == roomPrincipal
{
	
	//mejorPuntuacion
	draw_set_halign(fa_center);
	draw_text_transformed_color(global.room_halfx-120,global.room_halfy-320,mejorPuntuacion,2,2,image_angle,c_black,c_black,c_black,c_black,.5); //Sombra Puntuacion
	draw_text_transformed_color(global.room_halfx-100,global.room_halfy-300,mejorPuntuacion,2,2,image_angle,c_white,c_white,c_white,c_white,1);	//Puntuacion
}
	
if obControl.gameOver 
	{
		if (mejorPuntuacion <= puntuacion)
		{
			var theScore = mejorPuntuacion;
		}
		else
		{
			var theScore = puntuacion;
		}
	
		draw_set_halign(fa_center);
		draw_text_transformed_color(global.room_halfx-120,global.room_halfy-320,theScore,2,2,image_angle,c_black,c_black,c_black,c_black,.5); //Sombra Puntuacion
		draw_text_transformed_color(global.room_halfx-100,global.room_halfy-300,theScore,2,2,image_angle,c_white,c_white,c_white,c_white,1);	//Puntuacion
	}

if room == roomPrincipal 
{	
	draw_set_halign(fa_center);
	draw_text_transformed_color(global.room_halfx-100,global.room_halfy-200,"BEST",.8,.8,image_angle,c_white,c_white,c_yellow,c_yellow,1);
}

//Best Score
if obControl.gameOver 
{
	Load();
	if  (mejorPuntuacion <= puntuacion) && puntuacion >= 100
	{
		draw_set_halign(fa_center); //winner chicken dinner
		draw_text_transformed_color(global.room_halfx-100,200,"NEW"+chr(13)+"BEST"+chr(13)+"SCORE!!!",2,2,0,c_white,c_yellow,c_white,c_yellow,1);
		
		//Confetti
		part_system_drawit(systemConfety);
		if confetti
		{
			part_emitter_region(systemConfety,emitterConfeti,global.room_halfx-350,global.room_halfx+350,global.room_halfy-900,global.room_halfy-300,ps_shape_rectangle,ps_distr_invgaussian);
			part_emitter_burst(systemConfety,emitterConfeti,partTypeConfetti,20);
			confetti = false;
			alarm[1] = 25;
		}
	}
	else
	{
		draw_text_transformed_color(global.room_halfx-100,global.room_halfy-200,"BEST: " + string(mejorPuntuacion),.7,.7,image_angle,c_yellow,c_white,c_yellow,c_white,1);
	}
}


//Monedas
draw_set_halign(fa_left);
draw_sprite_ext(spMoneda,0,60,86,.7,.7,0,c_black,.5); //Sombra
draw_sprite_ext(spMoneda,0,70,96,.7,.7,0,-1,1);

var temporalMoneda = monedas;
if room == roomPrincipal
{
	temporalMoneda = monedasTotal;
}

draw_text_transformed_color(100,70,string(temporalMoneda),.7,.7,image_angle,c_black,c_black,c_black,c_black,.5);
draw_text_transformed_color(110,80,string(temporalMoneda),.7,.7,image_angle,c_yellow,c_yellow,c_yellow,c_yellow,1);

//Resetiar opacidad
draw_set_alpha(1);