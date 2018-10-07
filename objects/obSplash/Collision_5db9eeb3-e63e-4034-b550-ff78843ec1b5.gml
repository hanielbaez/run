/// @description Insert description here
if !obPlayer.volando && splash == true{
	obPlayer.SplashSound = true;
	obPlayer.colision = true;
	part_emitter_region(systemSplash,emiteSplash,x-10,x+10,y-10,y+10,ps_shape_rectangle,ps_distr_gaussian)
	part_emitter_burst(systemSplash,emiteSplash,partSplash0,200);
	part_emitter_burst(systemSplash,emiteSplash,partSplash1,100);
	instance_destroy();
}

	