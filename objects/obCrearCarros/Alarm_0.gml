/// Crear carros cada X frame

xInicial = irandom_range(270, 450);
yInicial = room_height + 350;

instance_create_depth(xInicial, yInicial, 1, obNormalCar);

if !obControl.gameOver 
{
	alarm[0] = 50;
	obNormalCar.velocidad += .16;
}
