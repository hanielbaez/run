/// @description Insert description here
// You can write your code in this editor
if (x <= 225 || x >= 690) xDireccion = xDireccion*-1;

x +=xVelocidad*xDireccion;
//image_angle += 10*xDireccion;
y+=10;

//if y > room_height instance_destroy();