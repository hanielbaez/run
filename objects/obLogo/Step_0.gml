/// @description Insert description here
// You can write your code in this editor
t = (t + increment) mod 360;
shift = amplitude * dsin(t);
 
//clone the movement from the object's speed and direction
yy += vspeed;
y = yy + shift; //vertical wave motion

if room != roomPrincipal
{
	instance_destroy();
}