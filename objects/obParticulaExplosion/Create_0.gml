/// Inicializar las Particulas
system = part_system_create();

//Crear 3 particulas
explosion_center_part = create_part_type_sprite(spCentroExplosion, true, 30, 30, 0.5, 0.75, -.001);
explosion_particle_part = create_part_type_sprite(spParticulaExplosion, true, 15, 20, 2, 1, -.01);
smoke_particle_part = create_part_type_sprite(spHumo, true, 15, 15, 0.5, 1, -.01);