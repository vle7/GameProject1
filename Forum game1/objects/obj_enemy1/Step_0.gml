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
	/// @DnDArgument : "arg" "x,y,300,obj_player,false,false"
	near_player = collision_circle(x,y,300,obj_player,false,false);

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
		/// @DnDArgument : "expr" "2"
		/// @DnDArgument : "var" "state"
		state = 2;
	
		/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
		/// @DnDVersion : 1
		/// @DnDHash : 705F20DB
		/// @DnDParent : 26BD779B
		/// @DnDArgument : "msg" "state"
		show_debug_message(string(state));
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5C67921E
/// @DnDArgument : "var" "state"
/// @DnDArgument : "value" "2"
if(state == 2)
{

}