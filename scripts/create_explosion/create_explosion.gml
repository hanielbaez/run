//Crear_explosion(x,y)

var xx = argument0;
var yy = argument1;

repeat (15)
{
	instance_create_depth(xx-26+random(42), yy-26+random(42), -1, obCentroExplosion);
}

part_particles_create(obParticulaExplosion.system, xx, yy, obParticulaExplosion.explosion_center_part, 2);