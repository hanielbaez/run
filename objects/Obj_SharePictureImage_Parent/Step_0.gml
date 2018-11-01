if(State==0)
{
	if (Sprite!=-1)
		y-=(y-pos_y)/10
}
else
{
	y+=(-150+y)/10
	if (y<-150)
		instance_destroy()
}

if(addingSprite)
if(!saveScreen)
{
	if(file_exists(localPath))
	{
		addingSprite=false
		Sprite=sprite_add(localPath,0,0,0,0,0)
	}	
}


if(Sharing)
{
	
	if(file_exists(path))
	{
		
		Sharing=false
		Sprite=sprite_add(localPath,0,0,0,0,0)
		
		if(os_type==os_android)
			ShareAndroid_Image(yourGameName,path)
		if(os_type==os_ios)
			ShareIOS_Image(path)
	}	
}
