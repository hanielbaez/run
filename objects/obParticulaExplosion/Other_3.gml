/// Destruir el systema de particulas
part_system_destroy(system);

// Deetruir particulas
part_type_destroy(explosion_center_part);
part_type_destroy(explosion_particle_part);
part_type_destroy(smoke_particle_part);
effect_clear();