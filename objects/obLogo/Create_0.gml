/// @description Animacion del Logo
t = 0;
increment = 10; //degrees -- freq = 1 oscillation per second (1Hz) in a 30 fps room
amplitude = 15; //pixels of peak oscillation
 
//clone the y-position (or use x instead if you're doing horizontal oscillation)
yy = y;

vk_iniciar = virtual_key_add(165,650,400,400,vk_enter);
//virtual_key_show(vk_iniciar)