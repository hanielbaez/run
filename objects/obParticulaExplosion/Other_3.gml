/// Destruir el systema de particulas
part_system_destroy(system);
part_system_destroy(obPlayer.sistema_derrape);


// Deetruir particulas
part_type_destroy(explosion_center_part);
part_type_destroy(explosion_particle_part);
part_type_destroy(smoke_particle_part);
part_type_destroy(obPlayer.particula_derrape);
part_type_destroy(obPlayer.particula_derrape2);

effect_clear();

if instance_exists(obMoneda)
{
	part_system_destroy(obMoneda.partMonedaSystem);
	part_type_destroy(obMoneda.partMonedas);
}