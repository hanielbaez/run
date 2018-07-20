ini_open("Save.sav");
var puntuacionAnterior = ini_read_real("Puntuacion","mejorPuntuacion",0);
ini_write_real("Moneda","Cantidad",obGUI.monedasTotal); //Guardando las monedas
if puntuacionAnterior < obGUI.puntuacion
{
	ini_write_real("Puntuacion","mejorPuntuacion",obGUI.puntuacion);
}
ini_close();

