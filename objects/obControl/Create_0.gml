/// @description Inicializando Variables generales del juego

gameOver = false;

soloUnaVez = true;
combo = 0;
music = 1;
if music == 1 audio_play_sound(sndHappy,1,1);
global.indexPista = 0;
global.distancia = 0;
global.dayState = 0; // 0 == day, 1 == night
global.coinF = 1;


//ga_initialize("aef341a05d2fc9d5760d89305e4f27f9", "4fe5c3d00303da2cae4fd75a6b696e3be222b79d"); //GameAnalityc