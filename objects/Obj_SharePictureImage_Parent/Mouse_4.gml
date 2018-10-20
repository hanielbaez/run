//if (Share_checkPermission())
if(os_type==os_android)
ShareAndroid_Image("Bipong!",path)

if(os_type==os_ios)
ShareIOS_Image(path)
/*else
{
Share_getPermission()
instance_create(xstart,ystart,object_index)
instance_destroy()
}


/* */
/*  */
