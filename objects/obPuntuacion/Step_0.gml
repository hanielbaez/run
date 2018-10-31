/// @description Insert description here
// You can write your code in this editor
if keyboard_check(ord("L"))
{
	image_index = 1;
	if achievement_available() achievement_show_leaderboards();
}
else
{
	image_index = 0;
}