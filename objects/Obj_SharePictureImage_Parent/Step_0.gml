if State=0
{if Sprite!=-1
y-=(y-pos_y)/10
}
else
{
y+=(-150+y)/10
if y<-150 instance_destroy()
}





