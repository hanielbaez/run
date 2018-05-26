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
part_type_sprite(partMonedas, spMasPuntuacion, false, true, false);
part_type_alpha2(partMonedas, 1, 0);
part_type_size(partMonedas,2.5,2.5,false,false);
part_type_speed(partMonedas,20, 20, false, false);
part_type_direction(partMonedas,90,90,false,false);
part_type_blend(partMonedas,true);
part_type_life(partMonedas,room_speed*.8,room_speed*.8);

//Emisor
partMonedaEmisor = part_emitter_create(partMonedaSystem);
