/// @description Insert description here
// You can write your code in this editor
if instance_exists(obTorretaMagneto)
{
	x = obTorretaMagneto.x;
	y = obTorretaMagneto.y-50;
}
else
{
	if room == room0
	{
		instance_destroy();
	}
	else
	{
		x = obSwipe.x;
		y = obSwipe.y-50;
	}
	
}