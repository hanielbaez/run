/// @description Insert description here
// You can write your code in this editor
if (x <= 225 || x >= 690) xDireccion = xDireccion*-1;

x +=xVelocidad*xDireccion;
image_angle += 10*xDireccion;
y-=10;

//effect_create_below(ef_star,x,y,3,c_red);
part_emitter_region(systemRastro,emiteRastro,x,x,y,y,ps_shape_rectangle,ps_distr_gaussian)
part_emitter_stream(systemRastro,emiteRastro,partRastro,1);
//part_emitter_stream()