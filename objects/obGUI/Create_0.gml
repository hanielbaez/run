//Declarando Variables para la GUI
puntuacion = 0;
mejorPuntuacion = 0;
monedas = 0;

aumentar = 0;

dosSegundos = 2;
activarGameOver = false;

view_halfx = view_camera[0].x/2;
view_halfy = view_camera[0].y/2;

colorNegro = make_color_rgb(0,0,0);

//Bitmap Font
var map_string = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!;%:?*()_+-=.,/|\"'@#$^&{}[] ";
bitmapFont = font_add_sprite_ext(spBitmapFont,map_string,true,5);



