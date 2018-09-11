/// @description Moverse a la misma velocida que los otros carros
if instance_exists(obNormalCar) velocidad = obNormalCar.velocidad;

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
	if  obControl.music == 1 audio_play_sound(sndCoin,2,false);
	instance_destroy();
}

if instance_exists(obTorretaMagneto) && !obControl.gameOver
{
	move_towards_point(obPlayer.x,obPlayer.y,40);
}

t = (t + increment) mod 360;
shift = amplitude * dsin(t);

//clone the movement from the object's speed and direction
xx += hspeed;
x = xx + shift; //vertical wave motion

//Destruir moneda 
if y >= room_height instance_destroy();