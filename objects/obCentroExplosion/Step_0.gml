/// Crear la explosion de particulas
part_particles_create(obParticulaExplosion.system, x-8+random(36), y-8+random(36), obParticulaExplosion.explosion_particle_part, 1);
part_particles_create(obParticulaExplosion.system, x-8+random(36), y-8+random(36), obParticulaExplosion.smoke_particle_part, 1);

// Destruir las particulas de la explosion
if (speed == 0)
{
	instance_destroy();
}