
if(os_type==os_android)
{
	if (Share_checkPermission())
		ShareAndroid_Image("YourGameName",path)
	else
	{
		Share_getPermission()

	}
}
if(os_type==os_ios)
ShareIOS_Image(path)

//What is this?, you added this too?
//		instance_create(xstart,ystart,object_index)//????
//		instance_destroy()//???
/* */
/*  */
//i do no remember adding anything, also i re install all again