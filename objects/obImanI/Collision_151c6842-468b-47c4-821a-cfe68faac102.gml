/// @description Insert description here
// You can write your code in this editor
with(obPlayer)
	{
		if obControl.music == 1 audio_play_sound(sndPowerUp,10,false);
		instance_create_depth(x,y,obPlayer.depth-1,obTorretaMagneto)
	}
instance_destroy();