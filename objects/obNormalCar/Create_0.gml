///Inicializando variables
velocidad = 25;
//SPRITE aleaorio
randomize();
image_index = irandom_range(0,7);
image_speed = 0;

//Crear obMasPuntos
if room = room0 instance_create_depth(x,y-(sprite_height/1.5),obNormalCar.depth,obMasPunto);

//Crear moneda
if (room == room0)
{
	moneda_aleatoria = irandom(10);
	if obPlayer.volando moneda_aleatoria = 1;
	
	if moneda_aleatoria <= 6
	{
			var yAleatorio = irandom_range(y-sprite_height,y-sprite_height-100);
			var xAleatorio = irandom_range(300,630);
			var PoN = choose(1,-1); //Positivo o Negativo
			
			for (var i = irandom(8);i>0;i--)
			{
				if !place_meeting(xAleatorio,yAleatorio,obPlayer) instance_create_depth(xAleatorio,yAleatorio,depth-10,obMoneda);
				xAleatorio = xAleatorio+100*PoN;
				xAleatorio = clamp(xAleatorio,360,630)
				yAleatorio = yAleatorio-100;
				
			}
	}
}

/// @description Animacion del Logo
t = 0;
increment = random_range(5,10); //degrees -- freq = 1 oscillation per second (1Hz) in a 30 fps room
amplitude = irandom(5); //pixels of peak oscillation
 
//clone the y-position (or use x instead if you're doing horizontal oscillation)
xx = x;