//@decription Precionar Iniciar
if keyboard_check(ord("S"))
{
	image_index = 1;
	if !instance_exists(Obj_SharePictureImage_V) instance_create_layer(x-100,y,"share",Obj_SharePictureImage_V);
}
else
{
	image_index = 0;
}