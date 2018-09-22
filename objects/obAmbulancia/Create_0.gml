/// @description Insert description here
// You can write your code in this editor
alarm[0] = 20*room_speed;
obPlayer.visible = false;

if !obControl.gameOver && obControl.music == 1 
{
	audio_play_sound(sndSiren,2,1);
	audio_sound_pitch(sndSiren,1.2)
}

////Corazon System
partCorazonSytem = part_system_create()
part_system_automatic_draw(partCorazonSytem,false);

//Corazon Particle
partCorazon = part_type_create();
part_type_sprite(partCorazon,spCorazon,0,0,0);
part_type_speed(partCorazon,10,50,0,0);
part_type_blend(partCorazon,true);
part_type_direction(partCorazon,250,290,0,0);
part_type_size(partCorazon,.1,.5,0,0);
part_type_life(partCorazon,25,40);

//Corazon Emmiter
emiterCorazon = part_emitter_create(partCorazonSytem);