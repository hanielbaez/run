///Inicializando variables
velocidad = 30;

//SPRITE aleaorio
randomize();
image_index = irandom_range(0,7);
image_speed = 0;

//Crear obMasPuntos
instance_create_depth(x,y+(sprite_height/2),obNormalCar.depth,obMasPunto);

//Crear moneda
//if (room == room0)
//{
//	moneda_aleatoria = irandom(10);
//	if moneda_aleatoria <= 5
//	{
//		var cantidadMonedas = irandom(5);  
	
//		repeat cantidadMonedas
//		{
//			//Posicion moneda aleatoria
//			yAleatorio = y-sprite_height-irandom(80);
//			xAleatorio = irandom_range(270, 450);
			
//			instance_create_depth(xAleatorio,yAleatorio,depth-10,obMoneda);
//		}
//	}
//}