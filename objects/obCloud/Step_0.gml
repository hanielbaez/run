/// @description Insert description here
if global.indexPista == 3
{
	part_emitter_stream(psRain,emiRain,partRain,5);
}
else 
{
	//visible = false;
}

if obControl.gameOver || global.indexPista > 3 
{
	part_emitter_destroy(psRain,emiRain);
	part_system_destroy(psRain);
	instance_destroy();
}

