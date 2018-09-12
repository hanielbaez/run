/// @description Insert description here
// You can write your code in this edito
if global.dayState == 1
{
	if alpha <= 0.6 alpha += 0.001;

}
else
{
	if alpha >= 0 alpha -= 0.001;
}

if surface_exists(dayCycle)
{
	surface_set_target(dayCycle);
	draw_clear(c_black);
	with(obCarLight)
	{
		gpu_set_blendmode(bm_src_color);
		draw_sprite_ext(spCarLight,0,x+10,y+(sprite_height/2)-40,2,2,180+image_angle,c_white,1);
		gpu_set_blendmode(bm_normal);
	}
	surface_reset_target();
	draw_surface_ext(dayCycle,0,0,1,1,0,c_white,alpha);
}
else
{
	dayCycle = surface_create(room_width,room_height);
}

