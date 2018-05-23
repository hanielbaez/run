/// @description Declarando las variables utilizadas en el carro (Player)

velocidad = 33.75;
xDireccion = 0;
xMovimiento = 0;

puedeMoverse = false;
colision = false;
iniciarJuego = true;

yInicial = 350;
randomize();
x = choose(270, 450);
y = -130;

//PARTICULAS DERRAPE
sistema_derrape = part_system_create(); //Sistema
part_system_automatic_draw(sistema_derrape,false);


particula_derrape = part_type_create();
part_type_shape(particula_derrape,pt_shape_smoke);
part_type_direction(particula_derrape,80,100,false,1);
part_type_speed(particula_derrape,30,30,false,false);
part_type_color2(particula_derrape,c_dkgray,c_gray);
//part_type_blend(particula_derrape,true);
part_type_alpha2(particula_derrape,1,0);
part_type_size(particula_derrape,0.1,2,.01,false);
part_type_life(particula_derrape,5,15)


emisor_derrape = part_emitter_create(sistema_derrape); //Emisor

