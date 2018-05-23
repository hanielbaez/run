//Inicializando Variables generales del juego

gameOver = false;
tryAgainX = 0;
tryAgainY = 0;

vk_iniciar = virtual_key_add(300,850,150,150,vk_enter);
//virtual_key_show(vk_iniciar)

//Botones virtuale TryAgain
v_tryAgain = virtual_key_add(tryAgainX,tryAgainY,450,100,ord("R"));
//virtual_key_show(v_tryAgain);