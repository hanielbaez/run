/// Crear carros cada X frame

xInicial = irandom_range(270, 450);
yInicial = room_height + 350;

instance_create_depth(xInicial, yInicial, obPlayer.depth, obNormalCar);

if !obControl.gameOver alarm[0] = 30;
