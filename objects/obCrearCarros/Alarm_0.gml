/// @description Crear carros cada X frame

xInicial = irandom_range(290, 640);
yInicial = -2000;
randomize();

instance_create_depth(xInicial, yInicial, 301, obNormalCar);

if !obControl.gameOver && instance_exists(obPlayer)
{
	alarm[0] = irandom_range(25,maxTime);
	maxTime-=65/100
	maxTime = clamp(maxTime,35,100)
}

selectPower = choose(obImanI,obAmbulanceI,obBulletIc);
instance_create_depth(460,-50,301,selectPower);