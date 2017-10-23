/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 611A0F3C
/// @DnDArgument : "var" "can_throw"
/// @DnDArgument : "value" "1"
if(can_throw == 1)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 345F7E15
	/// @DnDParent : 611A0F3C
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_yoyo"
	/// @DnDSaveInfo : "objectid" "1d2a65d3-bcb7-4986-8e0d-d77b48ce000e"
	instance_create_layer(x + 0, y + 0, "Instances", obj_yoyo);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 350C8866
	/// @DnDParent : 611A0F3C
	/// @DnDArgument : "var" "can_throw"
	can_throw = 0;
}