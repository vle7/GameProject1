/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 4385F694
/// @DnDArgument : "expr" "can_throw"
if(can_throw)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 345F7E15
	/// @DnDParent : 4385F694
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_yoyo"
	/// @DnDSaveInfo : "objectid" "1d2a65d3-bcb7-4986-8e0d-d77b48ce000e"
	instance_create_layer(x + 0, y + 0, "Instances", obj_yoyo);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 350C8866
	/// @DnDParent : 4385F694
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "can_throw"
	can_throw = false;
}