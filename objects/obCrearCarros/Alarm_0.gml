/// @description Crear carros cada X frame

xInicial = irandom_range(290, 640);
yInicial = -1500;
randomize();

instance_create_depth(xInicial, yInicial, 301, obNormalCar);
//instance_create_depth(global.room_halfx, yInicial, 301, obPista);
//instance_create_depth(xInicial, yInicial, 301, obImanI);

if !obControl.gameOver && instance_exists(obPlayer)
{
	alarm[0] = irandom_range(20,maxTime);
	maxTime-=65/100
	maxTime = clamp(maxTime,35,100)
}
