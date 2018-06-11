/// Definir variables
velocidad = obNormalCar.velocidad;

image_alpha = 1;

/// Dibujar sombra
draw_sprite_ext(sprite_index, image_index, x-5, y-5, image_xscale, image_yscale, image_angle, c_black, .5);

//PARTICULAS + 1 moneda
//Systema de particulas
partMonedaSystem = part_system_create();

//Particulas
partMonedas = part_type_create();
part_type_sprite(partMonedas, spMasPuntuacion, false, true, false);
//part_type_alpha2(partMonedas, 1, 0);
part_type_size(partMonedas,.1,.5,.2,false);
part_type_life(partMonedas,10,10);

//Emisor
partMonedaEmisor = part_emitter_create(partMonedaSystem);
