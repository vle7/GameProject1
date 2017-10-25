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


if (place_meeting(x,y+vsp, obj_wall))
{
	while(!place_meeting(x,y+sign(vsp),obj_wall))
	{
		y += sign(vsp)
	}
	vsp = 0
	if (fearofheights) && !position_meeting(x+ (sprite_width/2)*dir, y+(sprite_height/2)+1, obj_wall)
	{
		dir *= -1
	}
}
if(st == 0){
	if(random_range(0,1) < .01){
	
		st = 1
		alarm_set(0, 10)
	}

	x += hsp
	y += vsp
}