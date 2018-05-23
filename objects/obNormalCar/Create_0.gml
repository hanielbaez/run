///Inicializando variables
velocidad = 40;

//SPRITE aleaorio
randomize();
image_index = irandom_range(0,7);
image_speed = 0;

//Posicion moneda aleatoria
yAleatorio = y-sprite_height-irandom(80);
xAleatorio = irandom_range(270, 450);

//Crear obMasPuntos
instance_create_depth(x,y+(sprite_height/2),depth-10,obMasPunto);

//Crear moneda
moneda_aleatoria = irandom(10);
if moneda_aleatoria <= 3
{
	var cantidadMonedas = irandom(5);  
	
	repeat cantidadMonedas
	{
		instance_create_depth(xAleatorio,yAleatorio,depth-10,obMoneda);
	}
}