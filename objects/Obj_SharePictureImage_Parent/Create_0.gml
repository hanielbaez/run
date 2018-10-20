/// @description //READ THIS!!
///You only need create where you want screenshoot and finish!!

if(os_type=os_android)
path=Android_getExternalPath()+"/Screens/Screen.png"
if(os_type=os_ios)
path=IOS_getPath()+"/Screens/Screen.png"


State=0
Sprite=-1
pos_y=50
screen_save(path)
alarm[0]=room_speed*2

image_speed=0

width=sprite_width-45*2



