//check direction
var move = move_right - move_left

hsp = move * walkspeed;


//Jump
if (place_meeting(x, y+1, obj_wall)) and (jump){
	vsp = jumpheight;
}

//H collision
if (place_meeting(x+hsp, y, obj_wall)){
	while(!place_meeting(x+sign(hsp), y, obj_wall)){
		x += sign(hsp)
	}
	hsp = 0;
}
x += hsp

//V collision
if (place_meeting(x, y+vsp, obj_wall)){
	while(!place_meeting(x, y+sign(vsp), obj_wall)){
		y += sign(vsp)
	}
	vsp = 0;
}
y += vsp

//apply gravity
vsp = vsp + grv;

//check state for animation


move_left = 0;
move_right = 0;
jump = 0;