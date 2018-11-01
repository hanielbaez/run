if(os_type==os_android)
	path=Android_getExternalPath()+"/yourGameFolder/SharedSprite.png"//auxiliar path 

if(os_type==os_ios)
	path=IOS_getPath()+"/SharedSprite.png"//auxiliar path 

//show_debug_message("Kaguva------>PATH")
//show_debug_message(path)

surf = surface_create(sprite_get_width(sprite_index),sprite_get_height(sprite_index));//surface size
    surface_set_target(surf);
    draw_clear_alpha(c_black, 0);//background colour
    draw_sprite(sprite_index,0,0,0)//Sprite to Share
    surface_reset_target();
    __view_set( e__VW.SurfaceID, 0, surf );
surface_save(surf,path);



