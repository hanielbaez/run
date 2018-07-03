ini_open("Save.sav");
var puntuacionAnterior = ini_read_real("Puntuacion","MejorPuntuacion",0);
ini_write_real("Moneda","Cantidad",obGUI.monedasTotal); //Guardando las monedas
if puntuacionAnterior < obGUI.puntuacion
{
	ini_write_real("Puntuacion","MejorPuntuacion",obGUI.puntuacion);
}
ini_close();

