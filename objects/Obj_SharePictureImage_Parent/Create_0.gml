/// @description //READ THIS!!
///You only need create where you want screenshoot and finish!!

yourGameName=game_display_name

State=0
Sprite=-1
pos_y=50

Sharing=false

image_speed=0

localPath=working_directory+"ScreenshootByKaguva.png"
show_debug_message(localPath)

path=""

if(file_exists(localPath))
	file_delete(localPath)

addingSprite=true

saveScreen=true





