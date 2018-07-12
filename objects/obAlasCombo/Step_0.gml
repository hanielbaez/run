/// @description Acciones del combo
x = obPlayer.x;
y = obPlayer.y;
image_angle = obPlayer.image_angle;
image_xscale = obPlayer.image_xscale;
image_yscale = image_xscale;

part_emitter_region(systemSmoke,emmiterSmoke,x-5,x+5,y+10,y+20,ps_shape_rectangle,ps_distr_gaussian)
part_emitter_burst(systemSmoke,emmiterSmoke,particleSmoke,5);

if !obPlayer.volando
{
	part_system_destroy(systemSmoke);
	instance_destroy();
}