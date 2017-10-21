/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 456D10C6
/// @DnDArgument : "code" "//check direction$(13_10)$(13_10)$(13_10)hsp = move * walkspeed;$(13_10)$(13_10)//H collision$(13_10)if (place_meeting(x+hsp, y, obj_wall)){$(13_10)	while(!place_meeting(x+sign(hsp), y, obj_wall)){$(13_10)		x += sign(hsp)$(13_10)	}$(13_10)	hsp = 0;$(13_10)}$(13_10)x += hsp$(13_10)$(13_10)//V collision$(13_10)if (place_meeting(x, y+vsp, obj_wall)){$(13_10)	while(!place_meeting(x, y+sign(vsp), obj_wall)){$(13_10)		y += sign(vsp)$(13_10)	}$(13_10)	vsp = 0;$(13_10)}$(13_10)y += vsp$(13_10)$(13_10)//apply gravity$(13_10)vsp = vsp + grv;$(13_10)"
//check direction


hsp = move * walkspeed;

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