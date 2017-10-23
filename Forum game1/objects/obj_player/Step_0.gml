/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0AC3C2BC
/// @DnDArgument : "code" "//check direction$(13_10)move = move_right - move_left$(13_10)$(13_10)hsp = move * walkspeed$(13_10)$(13_10)$(13_10)//Jump$(13_10)if ((place_meeting(x, y+1, obj_wall)) or (place_meeting(x, y+1, obj_plat)and !place_meeting(x,y, obj_plat))) and (jump){$(13_10)	vsp = jumpheight$(13_10)}$(13_10)$(13_10)//H collision$(13_10)if (place_meeting(x+hsp, y, obj_wall)){$(13_10)	while(!place_meeting(x+sign(hsp), y, obj_wall)){$(13_10)		x += sign(hsp)$(13_10)	}$(13_10)	hsp = 0$(13_10)}$(13_10)x += hsp$(13_10)$(13_10)//V collision$(13_10)if (place_meeting(x, y+vsp, obj_wall)){$(13_10)	while(!place_meeting(x, y+sign(vsp), obj_wall)){$(13_10)		y += sign(vsp)$(13_10)	}$(13_10)	vsp = 0$(13_10)}$(13_10)if (place_meeting(x, y+vsp, obj_plat) and vsp >= 0){$(13_10)	if(!place_meeting(x, y, obj_plat)){$(13_10)		while(!place_meeting(x, y+1, obj_plat)){$(13_10)			y+=1$(13_10)		}$(13_10)		vsp = 0$(13_10)	}$(13_10)}		$(13_10)y += vsp$(13_10)$(13_10)//apply gravity$(13_10)vsp = vsp + grv$(13_10)//limit vsp$(13_10)if(vsp>15){$(13_10)	vsp = 30$(13_10)}$(13_10)$(13_10)//check state for animation$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)move_left = 0$(13_10)move_right = 0$(13_10)jump = 0$(13_10)"
//check direction
move = move_right - move_left

hsp = move * walkspeed


//Jump
if ((place_meeting(x, y+1, obj_wall)) or (place_meeting(x, y+1, obj_plat)and !place_meeting(x,y, obj_plat))) and (jump){
	vsp = jumpheight
}

//H collision
if (place_meeting(x+hsp, y, obj_wall)){
	while(!place_meeting(x+sign(hsp), y, obj_wall)){
		x += sign(hsp)
	}
	hsp = 0
}
x += hsp

//V collision
if (place_meeting(x, y+vsp, obj_wall)){
	while(!place_meeting(x, y+sign(vsp), obj_wall)){
		y += sign(vsp)
	}
	vsp = 0
}
if (place_meeting(x, y+vsp, obj_plat) and vsp >= 0){
	if(!place_meeting(x, y, obj_plat)){
		while(!place_meeting(x, y+1, obj_plat)){
			y+=1
		}
		vsp = 0
	}
}		
y += vsp

//apply gravity
vsp = vsp + grv
//limit vsp
if(vsp>15){
	vsp = 30
}

//check state for animation




move_left = 0
move_right = 0
jump = 0