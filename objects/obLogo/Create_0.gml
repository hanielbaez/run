/// @description Animacion del Logo
t = 0;
increment = 5; //degrees -- freq = 1 oscillation per second (1Hz) in a 30 fps room
amplitude = 10; //pixels of peak oscillation
 
//clone the y-position (or use x instead if you're doing horizontal oscillation)
yy = y;

vk_iniciar = virtual_key_add(300,850,150,150,vk_enter);
//virtual_key_show(vk_iniciar)