/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3B1EDEA9
/// @DnDArgument : "var" "obj_player.invincible"
if(obj_player.invincible == 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 66BF31D4
	/// @DnDApplyTo : other
	/// @DnDParent : 3B1EDEA9
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "health"
	with(other) {
	health += -1;
	
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7AEE5319
	/// @DnDParent : 3B1EDEA9
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "obj_player.invincible"
	obj_player.invincible = 1;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 77241136
	/// @DnDApplyTo : aaf0757a-d0cb-4853-846f-7ddeacc0edc5
	/// @DnDParent : 3B1EDEA9
	with(obj_player) {
	alarm_set(0, 30);
	
	}
}