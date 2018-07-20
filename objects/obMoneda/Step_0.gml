/// @description Moverse a la misma velocida que los otros carros
if !obControl.gameOver
{
	y += velocidad;
}
else
{
	vspeed = 0;
}

//Choque con el jugador(SUMAR MONEDAS)
if place_meeting(x,y,obPlayer)
{
	part_emitter_region(partMonedaSystem, partMonedaEmisor,x-5,x+5,y-5,y+5,ps_shape_ellipse,ps_distr_gaussian);
	part_emitter_burst(partMonedaSystem,partMonedaEmisor, partMonedas, 1);
	effect_create_above(ef_firework,160,75,5,c_yellow);
	obGUI.monedas++;
	audio_play_sound(sndCoin,2,false);
	instance_destroy();
}

if obPlayer.volando 
{
	image_xscale = 1.5;
	image_yscale = image_yscale;
	sombraX = 30;
	sombraY = sombraX;
}	

//Destruir moneda 
if y >= room_height /*|| place_meeting(x,y,obNormalCar)*/ instance_destroy();