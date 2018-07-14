/// @description Particles smoke

//System humo
systemSmoke = part_system_create();
part_system_automatic_draw(systemSmoke,false);

//Type Blue
particleSmokeBlue = part_type_create();
part_type_shape(particleSmokeBlue,pt_shape_sphere);
part_type_color1(particleSmokeBlue,c_blue);
part_type_size(particleSmokeBlue,.5,2,false,false);
part_type_direction(particleSmokeBlue,260,260,true,false);
part_type_speed(particleSmokeBlue,20,50,true,false);
part_type_life(particleSmokeBlue,10,30);
part_type_blend(particleSmokeBlue,true);
//Type White
particleSmokeWhite = part_type_create();
part_type_shape(particleSmokeWhite,pt_shape_sphere);
part_type_color1(particleSmokeWhite,c_white);
part_type_size(particleSmokeWhite,.5,2,false,false);
part_type_direction(particleSmokeWhite,270,270,true,false);
part_type_speed(particleSmokeWhite,20,50,true,false);
part_type_life(particleSmokeWhite,10,30);
part_type_blend(particleSmokeWhite,true);
//Tyoe Red
particleSmokeRed = part_type_create();
part_type_shape(particleSmokeRed,pt_shape_sphere);
part_type_color1(particleSmokeRed,c_red);
part_type_size(particleSmokeRed,.5,2,false,false);
part_type_direction(particleSmokeRed,280,280,true,false);
part_type_speed(particleSmokeRed,20,50,true,false);
part_type_life(particleSmokeRed,10,30);
part_type_blend(particleSmokeRed,true);

//Emmiter
emmiterSmoke = part_emitter_create(systemSmoke);

//System velocidad
systemVelocity = part_system_create();
//Part Type
particleTypeVelocity = part_type_create();
part_type_shape(particleTypeVelocity,pt_shape_pixel);
part_type_color2(particleTypeVelocity,c_blue,c_white);
part_type_size(particleTypeVelocity,5,10,false,false);
part_type_direction(particleTypeVelocity,270,270,false,false);
part_type_speed(particleTypeVelocity,70,90,true,false);
part_type_life(particleTypeVelocity,5,10);
part_type_blend(particleTypeVelocity,true);

//Emmiter
emmitterVelocity = part_emitter_create(systemVelocity)