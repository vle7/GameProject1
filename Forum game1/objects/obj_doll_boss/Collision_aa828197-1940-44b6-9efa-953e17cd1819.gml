/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6735ABC3
/// @DnDArgument : "var" "obj_player.invincible"
if(obj_player.invincible == 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 74C86842
	/// @DnDApplyTo : aaf0757a-d0cb-4853-846f-7ddeacc0edc5
	/// @DnDParent : 6735ABC3
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "health"
	with(obj_player) {
	health += -1;
	
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 395B28EF
	/// @DnDParent : 6735ABC3
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "obj_player.invincible"
	obj_player.invincible = 1;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 56B70ED4
	/// @DnDApplyTo : aaf0757a-d0cb-4853-846f-7ddeacc0edc5
	/// @DnDParent : 6735ABC3
	with(obj_player) {
	alarm_set(0, 30);
	
	}
}