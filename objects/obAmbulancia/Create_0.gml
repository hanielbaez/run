/// @description Insert description here
// You can write your code in this editor
alarm[0] = 20*room_speed;
obPlayer.visible = false;

if !obControl.gameOver && obControl.music == 1 
{
	audio_play_sound(sndSiren,2,1);
	audio_sound_pitch(sndSiren,1.2)
}
