/// @description Insert description here
// You can write your code in this editor

//Game Over fondo
if obControl.gameOver
{
	draw_set_alpha(0.8)
	draw_rectangle_colour(0, 0, 720, 1466, colorNegro, colorNegro, colorNegro, colorNegro, false);	
	
	//Game Over
	draw_set_alpha(1)
	draw_sprite_ext(spGameOver, -1, room_width/2, 300,1.2,1.2,0,image_blend,image_alpha);
	
	//Ver video
	draw_sprite_ext(spVerVideo, -1, (room_width/2)+25, 900,2+aumentar,2+aumentar,0,image_blend,image_alpha);
	image_index = 0;
	image_speed = 0;
	
	//Try Again
	if keyboard_check(ord("R")) 
	{
		draw_sprite_ext(spTryAgain, 1, (room_width/2), 1150,2,2,0,image_blend,image_alpha);
	}
	else
	{
		draw_sprite_ext(spTryAgain, 0, (room_width/2), 1150,2,2,0,image_blend,image_alpha);
	}
		
}

//Puntuacion Actual 
draw_set_font(bitmapFont);
draw_set_halign(fa_center);
draw_text_transformed_color((room_width/2)+10,view_halfy+180,puntuacion,3,3,image_angle,c_white,c_white,c_white,c_white,.6);

//Best Score
if obControl.gameOver draw_text_transformed_color((room_width/2),view_halfy+370,"BEST: " + string(mejorPuntuacion),1,1,image_angle,c_white,c_white,c_white,c_white,.9);
//draw_text((room_width/2)-25, view_halfy+350, "Best: " + string(mejorPuntuacion));

//Monedas
draw_set_halign(fa_left);
draw_sprite_ext(spMoneda,-1,60,70,1,1,0,-1,.7);
draw_text_transformed_color(110,60,"X" + string(monedas),1,1,image_angle,c_yellow,c_yellow,c_yellow,c_yellow,.7);


//draw_set_font(foEstandar);
//draw_set_color(c_yellow);
//draw_text(100, 40, "x " + string(monedas));

//Resetiar opacidad
draw_set_alpha(1);

