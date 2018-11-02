/// @description Insert description here
vk_share = virtual_key_add(x-170,y-50,120,100,ord("S"))
//virtual_key_show(vk_share);
if room == room0 
{
	draw_self()
	draw_text_transformed_color(x,y+75,"SHARE",.7,.7,image_angle,c_white,c_white,c_white,c_white,1);
}
