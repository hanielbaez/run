
var additionPath="/KaguvaFolder"+"/Screen.png"

switch(os_type)
{
	
	case os_android:
		
		if(Share_checkPermission())
		{
			
			path=Android_getExternalPath()+additionPath
			
			if(file_exists(path))
				file_delete(path)
					
			sprite_save(Sprite,0,path)
		
			Sharing=true
		}
		else
		{
			Share_getPermission()
		}
	break
	
	case os_ios:
	
		path=IOS_getPath()+additionPath
		
		if(file_exists(path))
			file_delete(path)
		
		sprite_save(Sprite,0,path)
		
		Sharing=true
		
	break
	
	default:
		path=""
	break
	
}


