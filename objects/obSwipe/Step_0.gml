/// @description Insert description here
// You can write your code in this editor
//if (x <= 225 || x >= 690) xDireccion = xDireccion*-1;

//x +=xVelocidad*xDireccion;

//image_alpha-=.005;

//if image_alpha <= 0 instance_destroy();
if x > obPlayer.x obPlayer.xDireccion = -1 
if x < obPlayer.x obPlayer.xDireccion = 1;

with(obPlayer)
{
	x = clamp(x,300,635);
}