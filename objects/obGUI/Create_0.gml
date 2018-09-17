//Declarando Variables para la GUI
puntuacion = 0;
mejorPuntuacion = 0;
monedas = 0;
monedasTotal = 0;
Load(); //Cargar puntuacion

dosSegundos = 2;
activarGameOver = false;
confetti = true;

global.room_halfx = room_width/2;
global.room_halfy = room_height/2;

colorNegro = make_color_rgb(0,0,0);

soloUnaVez = true

//Bitmap Font
var map_string = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!;%:?*()_+-=.,/|\"'@#$^&{}[] ";
bitmapFont = font_add_sprite_ext(spBitmapFont,map_string,true,5);

depth = -998;

//Create Particle System
systemConfety = part_system_create();
part_system_automatic_draw(systemConfety,false);
// Create Confetti Particle Type
partTypeConfetti = part_type_create();
// Set random (randomizes image_index) to TRUE here
part_type_sprite(partTypeConfetti, spConfety, false, false, true); 
// Add some image_angle wiggle (45)
part_type_orientation(partTypeConfetti, 0, 360, 0, 45, 0);
// Depending on case of usage, add downwards gravity
// Change values for wind or top-down camera
part_type_gravity(partTypeConfetti, 0.3, 270);
// Spread, spread it wide. Some direction wiggle doesn't hurt too.
// Our rectangles are wiggly after all.
part_type_direction(partTypeConfetti, 0, 360, 0, 30);
// Movement speed and deceleration 
part_type_speed(partTypeConfetti, 15, 25, -0.3, 0);
part_type_size(partTypeConfetti, 0.2, 0.3, 0, 0);
part_type_life(partTypeConfetti, 60, 120);

emitterConfeti = part_emitter_create(systemConfety);