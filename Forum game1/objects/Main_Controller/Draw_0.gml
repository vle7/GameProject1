/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 28F2C336
/// @DnDArgument : "obj" "obj_yoyo"
/// @DnDSaveInfo : "obj" "1d2a65d3-bcb7-4986-8e0d-d77b48ce000e"
var l28F2C336_0 = false;
l28F2C336_0 = instance_exists(obj_yoyo);
if(l28F2C336_0)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Line
	/// @DnDVersion : 1
	/// @DnDHash : 36E94530
	/// @DnDParent : 28F2C336
	/// @DnDArgument : "x1" "obj_player.x"
	/// @DnDArgument : "y1" "obj_player.y"
	/// @DnDArgument : "x2" "obj_yoyo.x"
	/// @DnDArgument : "y2" "obj_yoyo.y"
	draw_line(obj_player.x, obj_player.y, obj_yoyo.x, obj_yoyo.y);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 7E38AD5D
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 27879902
	/// @DnDParent : 7E38AD5D
	/// @DnDArgument : "var" "obj_player.st"
	/// @DnDArgument : "not" "1"
	if(!(obj_player.st == 0))
	{
		/// @DnDAction : YoYo Games.Drawing.Draw_Line
		/// @DnDVersion : 1
		/// @DnDHash : 160C496A
		/// @DnDParent : 27879902
		/// @DnDArgument : "x1" "obj_player.x"
		/// @DnDArgument : "y1" "obj_player.y"
		/// @DnDArgument : "x2" "obj_hook.x"
		/// @DnDArgument : "y2" "obj_hook.y"
		draw_line(obj_player.x, obj_player.y, obj_hook.x, obj_hook.y);
	}
}