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
	/// @DnDArgument : "code" "//check direction$(13_10)var move = sign(x - obj_player.x) * -1$(13_10)$(13_10)hsp = move * walkspeed;$(13_10)$(13_10)$(13_10)//Jump$(13_10)//if (place_meeting(x, y+1, obj_wall)) and (jump){$(13_10)//	vsp = jumpheight;$(13_10)//}$(13_10)$(13_10)//H collision$(13_10)if (place_meeting(x+hsp, y, obj_wall)){$(13_10)	while(!place_meeting(x+sign(hsp), y, obj_wall)){$(13_10)		x += sign(hsp)$(13_10)	}$(13_10)	hsp = 0;$(13_10)}$(13_10)x += hsp$(13_10)$(13_10)//V collision$(13_10)if (place_meeting(x, y+vsp, obj_wall)){$(13_10)	while(!place_meeting(x, y+sign(vsp), obj_wall)){$(13_10)		y += sign(vsp)$(13_10)	}$(13_10)	vsp = 0;$(13_10)}$(13_10)y += vsp$(13_10)$(13_10)//apply gravity$(13_10)vsp = vsp + grv;$(13_10)$(13_10)//check state changes$(13_10)if(collision_circle( x, y, deactive_range, obj_player, false, false)){$(13_10)	state = 0$(13_10)}$(13_10)if(collision_circle( x, y, attack_range, obj_player, false, false)){$(13_10)	state = 2$(13_10)}"
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
	
	//check state changes
	if(collision_circle( x, y, deactive_range, obj_player, false, false)){
		state = 0
	}
	if(collision_circle( x, y, attack_range, obj_player, false, false)){
		state = 2
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6E89916E
/// @DnDArgument : "var" "state"
/// @DnDArgument : "value" "2"
if(state == 2)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4736DEC4
	/// @DnDParent : 6E89916E
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "my_attack"
	/// @DnDArgument : "objectid" "obj_enemy_attack"
	/// @DnDSaveInfo : "objectid" "f6ea866d-e2ba-48e7-b221-583f41fc5d1f"
	my_attack = instance_create_layer(x + 0, y + 0, "Instances", obj_enemy_attack);

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 618FAA55
	/// @DnDParent : 6E89916E
	alarm_set(0, 30);
}