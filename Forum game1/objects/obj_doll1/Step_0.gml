/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 509FB0AC
/// @DnDArgument : "var" "state"
if(state == 0)
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 0FFA9745
	/// @DnDParent : 509FB0AC
	/// @DnDArgument : "var" "near_player"
	/// @DnDArgument : "function" "collision_circle"
	/// @DnDArgument : "arg" "x,y,aggro_range,obj_player,false,false"
	near_player = collision_circle(x,y,aggro_range,obj_player,false,false);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 26BD779B
	/// @DnDParent : 509FB0AC
	/// @DnDArgument : "var" "near_player"
	/// @DnDArgument : "op" "2"
	if(near_player > 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 40F68B0E
		/// @DnDParent : 26BD779B
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "state"
		state = 1;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5C67921E
/// @DnDArgument : "var" "state"
/// @DnDArgument : "value" "1"
if(state == 1)
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 259EE8DE
	/// @DnDParent : 5C67921E
	/// @DnDArgument : "code" "//check direction$(13_10)var move = sign(x - obj_player.x) * -1$(13_10)$(13_10)hsp = move * walkspeed;$(13_10)$(13_10)$(13_10)//Jump$(13_10)//if (place_meeting(x, y+1, obj_wall)) and (jump){$(13_10)//	vsp = jumpheight;$(13_10)//}$(13_10)$(13_10)//H collision$(13_10)if (place_meeting(x+hsp, y, obj_wall)){$(13_10)	while(!place_meeting(x+sign(hsp), y, obj_wall)){$(13_10)		x += sign(hsp)$(13_10)	}$(13_10)	hsp = 0;$(13_10)}$(13_10)x += hsp$(13_10)$(13_10)//V collision$(13_10)if (place_meeting(x, y+vsp, obj_wall)){$(13_10)	while(!place_meeting(x, y+sign(vsp), obj_wall)){$(13_10)		y += sign(vsp)$(13_10)	}$(13_10)	vsp = 0;$(13_10)}$(13_10)y += vsp$(13_10)$(13_10)//apply gravity$(13_10)vsp = vsp + grv;$(13_10)$(13_10)//check state for animation$(13_10)if(collision_circle( x, y, deactive_range, obj_player, false, false)){$(13_10)	state = 0$(13_10)}$(13_10)$(13_10)if(sign(hsp) >= 0){$(13_10)	image_xscale = -1$(13_10)}else{$(13_10)	image_xscale = 1$(13_10)}"
	//check direction
	var move = sign(x - obj_player.x) * -1
	
	hsp = move * walkspeed;
	
	
	//Jump
	//if (place_meeting(x, y+1, obj_wall)) and (jump){
	//	vsp = jumpheight;
	//}
	
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
	if(collision_circle( x, y, deactive_range, obj_player, false, false)){
		state = 0
	}
	
	if(sign(hsp) >= 0){
		image_xscale = -1
	}else{
		image_xscale = 1
	}
}