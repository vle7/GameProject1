//For this enemy the robot would move back and forth on a platoform and randomly
//shoot projectiles (doesn't have to have the player in front, it can shoot projectiles even
//facing away from the player.)
hsp = dir * movespeed
vsp += grav

if (place_meeting(x+hsp,y,obj_wall))
{
	while(!place_meeting(x+sign(hsp),y,obj_wall))
	{
		x += sign(hsp)
	}
	hsp = 0
	dir *= -1
}
x += hsp

if (place_meeting(x,y+vsp, obj_wall))
{
	while(!place_meeting(x,y+sign(vsp),obj_wall))
	{
		y += sign(vsp)
	}
	vsp = 0
	//if (fearofheights) && !position_meeting(x+sprite_width/2)*dir, y+(sprite_height/2)+8, obj_wall)
	//{
		//dir += -1
	//}
}
y += vsp