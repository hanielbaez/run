/// @description Insert description here
// You can write your code in this editor
x = obPlayer.x;
y = obPlayer.y;
image_angle = obPlayer.image_angle

with(obNormalCar)
{
	if distance_to_object(obAmbulancia) < 350
	{
		var dirx = sign(x - obAmbulancia.x)
		
		x += 9*dirx;
		x = clamp(x,290, 640);
	}
}

part_emitter_region(partCorazonSytem,emiterCorazon,x,x-20,y,y-20,ps_shape_rectangle,ps_distr_gaussian)
part_emitter_stream(partCorazonSytem,emiterCorazon,partCorazon,1);

	