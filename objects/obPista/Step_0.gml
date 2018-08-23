/// @description Insert description here
// You can write your code in this editor
if !obControl.gameOver
{
	if obPlayer.volando
	{
		y += 120;
	}
	else
	{
		y += 60;
	}
}

if y >= 0 && oneTime //Just one road at the time
{
	instance_create_depth(x,-1500,302,obPista)
	oneTime = false;
}

if y > room_height instance_destroy(); //Destroy