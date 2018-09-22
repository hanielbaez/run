/// @description Insert description here
// You can write your code in this editor
obPlayer.visible = true;
audio_stop_sound(sndSiren);
global.powerState  = true;
part_system_destroy(partCorazonSytem);
instance_destroy();