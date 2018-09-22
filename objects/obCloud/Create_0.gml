///// @description Rain or Snow
numHalfV = sprite_width div 2;
numHalfH = sprite_height div 2;

psRain = part_system_create();

//Particulas de lluvia
partRain = part_type_create();
part_type_speed(partRain,32,46,0,0);
part_type_direction(partRain,270,275,0,0);
part_type_shape(partRain,pt_shape_line);
part_type_orientation(partRain,0,5,0,0,true);
part_type_size(partRain,.1,.5,0,0);
part_type_color_mix(partRain,c_white,c_teal);
part_type_life(partRain,5,50);
part_type_scale(partRain,1.7,.5);

//Emisor
emiRain = part_emitter_create(psRain);
part_emitter_region(psRain,emiRain,x-numHalfV,x+numHalfV,y+numHalfH,y+sprite_height,ps_shape_rectangle,ps_distr_gaussian);

