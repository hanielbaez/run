/// @description Boton Play
if !instance_exists(obTransicion)
{
	var transicionTemporal
	transicionTemporal = instance_create_depth(0,0,-999,obTransicion);
	transicionTemporal.irA = room0;
}