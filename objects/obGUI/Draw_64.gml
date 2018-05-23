/// @description Insert description here
// You can write your code in this editor


if room == roomPrincipal
{
	 draw_sprite_ext(spReverseRunLogo, -1,global.room_halfx-20,global.room_halfy-320,1,1,0,c_black,0.5); //Logo Sombra
	 draw_sprite_ext(spReverseRunLogo, -1,global.room_halfx,global.room_halfy-300,1,1,0,image_blend,1); //Logo
	 
	 draw_sprite_ext(spIniciar, -1,global.room_halfx,global.room_halfy+300,2,2,0, image_blend,1); //Boton iniciar
	 image_speed = 0
}

//Game Over fondo
if obControl.gameOver
{
	draw_set_alpha(0.8)
	draw_rectangle_colour(0, 0, 720, 1466, colorNegro, colorNegro, colorNegro, colorNegro, false);	
	
	//Game Over
	draw_set_alpha(1)
	draw_sprite_ext(spGameOver, -1, global.room_halfx, 300,1.2,1.2,0,image_blend,image_alpha);
	
	//Ver video;
	draw_sprite_ext(spVerVideo, -1, global.room_halfx+25, 900,2,2,0,image_blend,image_alpha);
	image_index = 0;
	image_speed = 0;
	
	//Try Again
	if keyboard_check(ord("R")) 
	{
		draw_sprite_ext(spTryAgain,-1,global.room_halfx,1150,2,2,0,image_blend,image_alpha);
	}
	else
	{
		draw_sprite_ext(spTryAgain, 0, (room_width/2), 1150,2,2,0,image_blend,image_alpha);
	}
		
}

//Puntuacion Actual 
draw_set_font(bitmapFont);
draw_set_halign(fa_center);
if room == roomPrincipal
{	
	draw_text_transformed_color(global.room_halfx-20,global.room_halfy-120,puntuacion,3,3,image_angle,c_black,c_black,c_black,c_black,0.5); //Sombra Puntuacion
	draw_text_transformed_color(global.room_halfx,global.room_halfy-100,puntuacion,3,3,image_angle,c_white,c_white,c_white,c_white,1);	//Puntuacion
	draw_text_transformed_color(global.room_halfx,global.room_halfy+50,"BEST",1.5,1.5,image_angle,c_white,c_white,c_yellow,c_yellow,1);
}
else
{
	draw_text_transformed_color(global.room_halfx,global.room_halfy-100,puntuacion,3,3,image_angle,c_white,c_white,c_white,c_white,.6); //Puntuacion
}

//Best Score
if obControl.gameOver draw_text_transformed_color(global.room_halfx,global.room_halfy+50,"BEST: " + string(mejorPuntuacion),1,1,image_angle,c_white,c_white,c_white,c_white,.9);

//Monedas
draw_set_halign(fa_left);
draw_sprite_ext(spMoneda,-1,60,70,1,1,0,-1,.7);
draw_text_transformed_color(110,60,string(monedas),1,1,image_angle,c_yellow,c_yellow,c_yellow,c_yellow,.7);


//Resetiar opacidad
draw_set_alpha(1);

