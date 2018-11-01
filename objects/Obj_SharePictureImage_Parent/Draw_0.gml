draw_self()

if(Sprite!=-1)
{
	var sep=60;
	draw_sprite_stretched(Sprite,0,bbox_left+sep,bbox_top+sep,sprite_width-sep*2,sprite_height-sep*2)
	draw_sprite(sprite_index,1,x,y)
}



