/// @description Water Splash
image_alpha = 0;

systemSplash = part_system_create();

partSplash0 = part_type_create();
part_type_shape(partSplash0,pt_shape_ring);
part_type_color2(partSplash0,c_blue,c_aqua);
part_type_blend(partSplash0,true);
part_type_size(partSplash0,.01,.01,.1,true);
part_type_alpha3(partSplash0,.1,1,.2);
part_type_life(partSplash0,10,15);
part_type_speed(partSplash0,5,10,false,true);
part_type_direction(partSplash0,0,360,false,true);

partSplash1 = part_type_create();
part_type_shape(partSplash1,pt_shape_ring);
part_type_color1(partSplash1,c_white,);
part_type_blend(partSplash1,true);
part_type_size(partSplash1,.01,.01,.01,true);
part_type_alpha3(partSplash1,.1,1,.2);
part_type_life(partSplash1,15,20);
part_type_speed(partSplash1,5,10,false,true);
part_type_direction(partSplash1,0,360,false,true);

emiteSplash = part_emitter_create(systemSplash);