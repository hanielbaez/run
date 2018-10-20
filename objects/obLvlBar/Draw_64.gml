/// @description Insert description here
// You can write your code in this editor
draw_rectangle_color(x,y+50,x+305,y+60,c_black,c_black,c_black,c_black,false);
draw_rectangle_color(x,y+50,x+(xp/maxXP*300),y+60,c_yellow,c_yellow,c_yellow,c_yellow,false);

draw_circle_color(x-20,y+50,25,c_yellow,c_yellow,false);
draw_circle_color(x+315,y+50,25,c_black,c_black,false);

draw_set_halign(fa_center);
draw_text_transformed_color(x-15,y+40,lvl,.5,.5,0,c_ltgray,c_ltgray,c_ltgray,c_ltgray,1);
draw_text_transformed_color(x+320,y+40,lvl+1,.5,.5,0,c_ltgray,c_ltgray,c_ltgray,c_ltgray,1);
//draw_text_ext_color(300,300,"hi",1,1,c_white,c_white,c_white,c_white,1)


//draw_text(x,y+50,"Hola mundo");