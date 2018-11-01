//@decription Precionar Iniciar
if keyboard_check(ord("S"))
{
	image_index = 1;
	if !instance_exists(Obj_Share_Sprite) instance_create_depth(x,y,depth,Obj_Share_Sprite);
}
else
{
	image_index = 0;
}