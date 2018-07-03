/// @description Animacion del GameOver
t = (t + increment) mod 360;
shift = amplitude * dsin(t);
 
//clone the movement from the object's speed and direction
xx += hspeed;
x = xx + shift; //vertical wave motion