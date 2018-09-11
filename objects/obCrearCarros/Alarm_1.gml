/// @description Make a powerUP
randomize();
selectPower = choose(obImanI,obAmbulanceI,obBulletIc);
if global.powerState instance_create_depth(460,-200,299,selectPower);
global.powerState  = false;
if !obControl.gameOver alarm[1] = room_speed*random_range(25,50);