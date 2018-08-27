/// @description Follow the powers

if instance_exists(obImanI)
{
	x = obImanI.x;
	y = obImanI.y;
}
else
{
	if instance_exists(obAmbulanceI)
	{
		x = obAmbulanceI.x;
		y = obAmbulanceI.y;
	}
	else
	{
		y-=20;
		instance_destroy();
	}
}




if place_meeting(x,y,obPlayer) ||  y > room_height 
{
	image_alpha-=.1
	instance_destroy();
}