/// @description Insert description here
// You can write your code in this editor
x = mouse_x;
y = mouse_y;

if device_mouse_check_button_pressed(0, mb_left)
{
	 StartMouseX = mouse_x;
	 StartMouseY = mouse_y; 
	 SwipeState = true;
}

if SwipeState
{
		xDirection = point_direction(StartMouseX,StartMouseY,mouse_x,mouse_y);
		xDistance = point_distance(StartMouseX,StartMouseY,mouse_x,mouse_y);

}
else
{
	//xDireccion = 0;
}

with(obPlayer)
{
	if obSwipeControl.xDistance > 50 
	{
		//Right
		if (obSwipeControl.xDirection > 135) && (obSwipeControl.xDirection < 225)
		{
			xDireccion = 1;
			
		}
		
		//Left
		if (obSwipeControl.xDirection > 315) || (obSwipeControl.xDirection < 45)
		{
			xDireccion = -1;
		}
		
		//x = clamp(x,360,560);
		//if x<=400 || x>=500 SwipeState = false
		
	}
}