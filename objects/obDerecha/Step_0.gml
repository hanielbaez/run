/// @description Insert description here
// You can write your code in this editor
if keyboard_check(vk_right) 
{
	image_alpha = 1;
}
else
{
	image_alpha = .2;
}

//Eliminar virtual key
if obControl.gameOver 
{
	virtual_key_delete(v_derecha)
	image_alpha = 0;
}