/// @description Insert description here
// You can write your code in this editor
//xp = obGUI.monedas;

if(xp >= maxXP)
{
	xp = 0;
	lvl ++;
	maxXP = (30 + (100*lvl) - 20);
}

obPlayer.image_index = lvl-1;