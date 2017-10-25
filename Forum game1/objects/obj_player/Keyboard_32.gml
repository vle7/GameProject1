/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 722C8DDF
/// @DnDArgument : "var" "st"
/// @DnDArgument : "value" "1"
if(st == 1)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 23645D2F
	/// @DnDInput : 3
	/// @DnDParent : 722C8DDF
	/// @DnDArgument : "expr_1" "-15"
	/// @DnDArgument : "var" "st"
	/// @DnDArgument : "var_1" "vsp"
	/// @DnDArgument : "var_2" "hsp"
	st = 0;
	vsp = -15;
	hsp = 0;

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 51F2CB0B
	/// @DnDParent : 722C8DDF
	/// @DnDArgument : "xpos" "target.x"
	/// @DnDArgument : "ypos" "target.y"
	/// @DnDArgument : "var" "yoyo"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "objectid" "obj_yoyo"
	/// @DnDSaveInfo : "objectid" "1d2a65d3-bcb7-4986-8e0d-d77b48ce000e"
	var yoyo = instance_create_layer(target.x, target.y, "Instances", obj_yoyo);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2079091B
	/// @DnDParent : 722C8DDF
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "yoyo.go_back"
	yoyo.go_back = true;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 33987BA2
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "jump"
jump = 1;