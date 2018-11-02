ini_open("Save.sav");
var puntuacionAnterior = ini_read_real("Puntuacion","mejorPuntuacion",0);
ini_write_real("Moneda","Cantidad",obGUI.monedasTotal); //Guardando las monedas
ini_write_real("xp","Experiencia",xp); //Guardando las xp
ini_write_real("lvl","Experiencia",lvl); //Guardando las xp
if puntuacionAnterior < obGUI.puntuacion
{
	achievement_post_score("CgkIlM-Kr7oSEAIQAQ",obGUI.puntuacion);
	ini_write_real("Puntuacion","mejorPuntuacion",obGUI.puntuacion);
}
ini_close();

