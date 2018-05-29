/// @description Insert description here
/// @description Efecto de transicion
transicionAlpha = clamp(transicionAlpha + (transicionEstado*transicionVelocidad),0,1);
if transicionAlpha == 1
{
	room_goto(irA);
	transicionEstado = -1;
}

if (transicionAlpha == 0) && (transicionEstado == -1)
{
	instance_destroy();
}

draw_set_color(c_black);
draw_set_alpha(transicionAlpha);
draw_rectangle(view_xport[0],view_yport[0],view_xport[0]+view_wport[0],view_yport[0]+view_hport[0],false);
draw_set_alpha(1);