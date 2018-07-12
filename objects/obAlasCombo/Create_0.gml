/// @description Particles smoke

//System
systemSmoke = part_system_create();
part_system_automatic_draw(systemSmoke,false);

//Type
particleSmoke = part_type_create();
part_type_shape(particleSmoke,pt_shape_sphere);
part_type_color3(particleSmoke,c_yellow,c_red,c_gray);
part_type_size(particleSmoke,.5,2,false,false);
part_type_direction(particleSmoke,250,290,true,false);
part_type_speed(particleSmoke,20,50,true,false);
part_type_life(particleSmoke,10,30);

//Emmiter
emmiterSmoke = part_emitter_create(systemSmoke);