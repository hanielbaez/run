///Inicializando variables
velocidad = 25;

//Crear obMasPuntos
if room = room0 instance_create_depth(x,y-(sprite_height/1.5),obNormalCar.depth,obMasPunto);

//SPRITE aleaorio
randomize();
image_index = irandom_range(0,15);
image_speed = 0;

//Swicht size for big cars
if image_index >= 13
{
	image_xscale = 1.7;
	image_yscale = image_xscale;
}

//Crear moneda
if (room == room0)
{
	moneda_aleatoria = irandom(10);
	if obPlayer.volando moneda_aleatoria = 1;
	
	if moneda_aleatoria <= 6
	{
			var yAleatorio = y+sprite_height;
			var xAleatorio = irandom_range(300,630);
			var PoN = choose(1,-1); //Positivo o Negativo
			
			for (var i = random_range(3,6);i>0;i--)
			{
			    instance_create_depth(xAleatorio,yAleatorio,depth+1,obMoneda);
				xAleatorio = xAleatorio+100*PoN;
				xAleatorio = clamp(xAleatorio,360,630)
				yAleatorio = yAleatorio+100;
			}
	}
}

/// @description Animacion del Logo
t = 0;
increment = random_range(5,10); //degrees -- freq = 1 oscillation per second (1Hz) in a 30 fps room
amplitude = irandom(5); //pixels of peak oscillation
 
//clone the y-position (or use x instead if you're doing horizontal oscillation)
xx = x;