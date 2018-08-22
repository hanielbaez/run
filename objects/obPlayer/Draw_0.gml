///@description Dibujar sombra y derrape system
var sombraY = sombraX;
draw_sprite_ext(sprite_index, image_index, x-sombraX, y-sombraY, image_xscale, image_yscale, image_angle, c_black, .5);

part_system_drawit(sistema_derrape); //Derrape
part_system_drawit(systemRastro) //Rastro

draw_self(); //Player