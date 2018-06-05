///Inicializando variables
velocidad = 25;
//SPRITE aleaorio
randomize();
image_index = irandom_range(0,7);
image_speed = 0;

//Crear obMasPuntos
instance_create_depth(x,y-(sprite_height/1.5),obNormalCar.depth,obMasPunto);

//Crear moneda
if (room == room0)
{
	moneda_aleatoria = irandom(10);
	if moneda_aleatoria <= 4
	{
			var yAleatorio = y-sprite_height;
			var xAleatorio = irandom_range(300,630);
			instance_create_depth(xAleatorio,yAleatorio,depth-10,obMoneda);	
		
		
	}
}