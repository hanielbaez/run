/// Definir variables
velocidad = obNormalCar.velocidad;

image_alpha = 1;

/// Dibujar sombra
draw_sprite_ext(sprite_index, image_index, x-5, y-5, image_xscale, image_yscale, image_angle, c_black, .5);

//PARTICULAS
//Systema de particulas
partMonedaSystem = part_system_create();

//Particulas
partMonedas = part_type_create();
part_type_sprite(partMonedas, spMoneda, false, true, false);
part_type_alpha2(partMonedas, 1, 0);
part_type_size(partMonedas,.5,1,-.0,false);
part_type_speed(partMonedas,10, 30, false, false);
part_type_direction(partMonedas,30,150,false,false);
part_type_blend(partMonedas,true);
part_type_life(partMonedas,room_speed*.1,room_speed*.5);

//Emisor
partMonedaEmisor = part_emitter_create(partMonedaSystem);
//part_emitter_region(partMonedaSystem, partMonedaEmisor,x-10,x+10,y-10,y+10,ps_shape_ellipse,ps_distr_gaussian);
//part_emitter_burst(partMonedaSystem,partMonedaEmisor, partMonedas, 10);