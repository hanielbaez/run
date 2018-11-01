/// @description Insert description here
// You can write your code in this editor
draw_self()
draw_text_transformed_color(x,y+60,"SHARE",.7,.7,image_angle,c_white,c_white,c_white,c_white,1);

vk_share = virtual_key_add(x-100,y-100,200,200,ord("S"))
//virtual_key_show(vk_share);