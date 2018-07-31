/// @description Declarar variables
xDireccion = -1;
xVelocidad = 15;

systemRastro = part_system_create();

partRastro = part_type_create();
part_type_sprite(partRastro,spImanIcon,false,false,false);
part_type_blend(partRastro,true);
part_type_alpha2(partRastro,.5,.1);
part_type_size(partRastro,1,1,-.01,false);
part_type_life(partRastro,20,20);
//part_type_gravity(partRastro,10,360);	

emiteRastro = part_emitter_create(systemRastro)