//@decription Precionar Reiniciar
if keyboard_check(ord("R"))
{
	image_index = 1;
}
else
{
	image_index = 0;
}

t = (t + increment) mod 360;
shift = amplitude * dsin(t);
 
//clone the movement from the object's speed and direction
xx += hspeed;
image_xscale = xx + shift; //vertical wave motion
image_yscale = image_xscale;