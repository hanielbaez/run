/// @description Insert description here
// You can write your code in this editor
//xp = obGUI.monedas;

if(xp >= maxXP)
{
	xp = 0;
	lvl ++;
	maxXP = (30 + (10*lvl) - 20);
	
	with(obPlayer)
	{
		part_emitter_region(sistema_frases,emisor_lvl,obPlayer.x-50,obPlayer.x+50,obPlayer.y-100,obPlayer.y,0,0);
		part_emitter_burst(sistema_frases,emisor_lvl,particula_lvl,50);
	}
	
}

obPlayer.image_index = lvl-1;