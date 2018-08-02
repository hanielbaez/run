/// @description Acciones del combo
x = obPlayer.x;
y = obPlayer.y;
image_angle = obPlayer.image_angle;
image_xscale = obPlayer.image_xscale;
image_yscale = image_xscale;

part_emitter_region(systemSmoke,emmiterSmoke,x-10,x+10,y+25,y+50,ps_shape_rectangle,ps_distr_gaussian)
part_emitter_burst(systemSmoke,emmiterSmoke,particleSmokeBlue,3);
part_emitter_burst(systemSmoke,emmiterSmoke,particleSmokeWhite,3);
part_emitter_burst(systemSmoke,emmiterSmoke,particleSmokeRed,3);

part_emitter_region(systemVelocity,emmitterVelocity,100,800,100,1500,ps_shape_rectangle,ps_distr_linear)
part_emitter_burst(systemVelocity,emmitterVelocity,particleTypeVelocity,1);

if !obPlayer.volando
{
	part_system_destroy(systemSmoke);
	part_system_destroy(systemVelocity);
	if !audio_is_playing(sndHappy) && obControl.music == 1 audio_play_sound(sndHappy,1,1);
	instance_destroy();
}