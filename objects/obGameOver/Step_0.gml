/// @description Animacion del GameOver
if point_distance(x,y,x,350) > 100
{
	move_towards_point(x,350,100);
}
else
{
	speed = 0;
}
t = (t + increment) mod 360;
shift = amplitude * dsin(t);

//clone the movement from the object's speed and direction
xx += hspeed;
x = xx + shift; //vertical wave motion
