///@description  Definir variables
sombraX = 10;
sombraY = sombraX;
AudioSpitch = 1;
velocidad = 12.5;

image_alpha = 1;

/// @description Animacion del GameOver
t = 0;
increment = 10; //degrees -- freq = 1 oscillation per second (1Hz) in a 30 fps room
amplitude = 20; //pixels of peak oscillation
 
//clone the y-position (or use x instead if you're doing horizontal oscillation)
xx = x;

/// Dibujar sombra
draw_sprite_ext(sprite_index, image_index, x-5, y-5, image_xscale, image_yscale, image_angle, c_black, .5);

//PARTICULAS + 1 moneda
//Systema de particulas
partMonedaSystem = part_system_create();

//Particulas
partMonedas = part_type_create();
part_type_sprite(partMonedas, spMasPuntuacion, false, true, false);
part_type_size(partMonedas,.1,.5,.2,false);
part_type_direction(partMonedas,90,90,false,false);
part_type_speed(partMonedas,10,10,1,false)
part_type_life(partMonedas,10,10);
part_type_blend(partMonedas,true);

//Emisor
partMonedaEmisor = part_emitter_create(partMonedaSystem);