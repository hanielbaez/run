/// @description Insert description here
// You can write your code in this editor
if (x <= 225 || x >= 690) xDireccion = xDireccion*-1;

x +=xVelocidad*xDireccion;
y+=30;

if y > room_height 
{
	global.powerState  = true;
	instance_destroy();
}
