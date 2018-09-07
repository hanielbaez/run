/// @description Insert description here
// You can write your code in this editor
x = obPlayer.x;
y = obPlayer.y;
image_angle = obPlayer.image_angle

with(obNormalCar)
{
	if distance_to_object(obAmbulancia) < 300
	{
		var dirx = sign(x - obAmbulancia.x)
		
		x += 9*dirx;
		x = clamp(x,290, 640);
	}
}



	