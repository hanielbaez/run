/// @description Declarando las variables utilizadas en el carro (Player)

velocidad = 33.75;
xDireccion = 0;
xMovimiento = 0;

puedeMoverse = false;
colision = false;
iniciarJuego = true;

yInicial = 800;
x = 452;
y = room_height;

////PARTICULAS DERRAPE
sistema_derrape = part_system_create(); //Sistema
part_system_automatic_draw(sistema_derrape,false);

particula_derrape = part_type_create();//Particula
part_type_shape(particula_derrape,pt_shape_smoke);
part_type_direction(particula_derrape,240,300,false,1);
part_type_speed(particula_derrape,30,30,false,false);
part_type_color2(particula_derrape,c_gray,c_dkgray);
part_type_alpha2(particula_derrape,1,0);
part_type_size(particula_derrape,0.1,2,.01,false);
part_type_life(particula_derrape,5,15)

particula_derrape2 = part_type_create();//Particula
part_type_shape(particula_derrape2,pt_shape_pixel);
part_type_direction(particula_derrape2,240,300,false,1);
part_type_speed(particula_derrape2,30,30,false,false);
part_type_color1(particula_derrape2,c_white);


emisor_derrape = part_emitter_create(sistema_derrape); //Emisor

//PARTICULAS FRASES
sistema_frases = part_system_create(); //Sistema

particula_frase = part_type_create();//Particula
part_type_sprite(particula_frase,spMasPuntuacion,false,false,true);
part_type_blend(true,c_white);
part_type_direction(particula_frase,90,90,false,false);
part_type_speed(particula_frase,1,5,false,false);
part_type_alpha2(particula_frase,1,0);
part_type_life(particula_frase,60,60);

emisor_frase = part_emitter_create(sistema_frases);//Emisor