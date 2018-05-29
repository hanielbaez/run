/// Crear carros cada X frame

xInicial = irandom_range(300, 630);
yInicial = -200;
randomize();

instance_create_depth(xInicial, yInicial, 1, obNormalCar);

if !obControl.gameOver 
{
	
	alarm[0] = irandom_range(20,40);
	obNormalCar.velocidad += .16;
}
