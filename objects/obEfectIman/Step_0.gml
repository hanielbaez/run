/// @description Insert description here
// You can write your code in this editor
if instance_exists(obTorretaMagneto)
{
	x = obTorretaMagneto.x;
	y = obTorretaMagneto.y-50;
}
else
{
	instance_destroy();
}