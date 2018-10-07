/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(0.5);
draw_rectangle_color(x-200,y-50,x,y+50,color,color,color,color,false);
draw_rectangle_color(x-210,y-60,x+10,y+60,c_yellow,c_white,c_yellow,c_white,true);
draw_set_alpha(1);
draw_sprite_ext(spMoneda,0,global.room_halfx-170,y+30,.5,.5,0,-1,1);
draw_text_transformed_color(global.room_halfx-100,y-30,"UPGRADE"+chr(13)+" "+chr(13)+"3325",.55,.55,0,c_white,c_white,c_white,c_white,1);