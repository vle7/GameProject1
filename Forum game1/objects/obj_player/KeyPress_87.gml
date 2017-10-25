/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 569A4828
/// @DnDArgument : "msg" "coin"
show_debug_message(string(coin));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 469A4114
/// @DnDArgument : "var" "coin"
/// @DnDArgument : "op" "2"
if(coin > 0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 657B7745
	/// @DnDParent : 469A4114
	/// @DnDArgument : "var" "health"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "100"
	if(health < 100)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 784A84CF
		/// @DnDParent : 657B7745
		/// @DnDArgument : "expr" "15"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "health"
		health += 15;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 40910983
		/// @DnDParent : 657B7745
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "coin"
		coin += -1;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0EBB22E3
		/// @DnDParent : 657B7745
		/// @DnDArgument : "var" "health"
		/// @DnDArgument : "op" "2"
		/// @DnDArgument : "value" "100"
		if(health > 100)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6DE944B4
			/// @DnDParent : 0EBB22E3
			/// @DnDArgument : "expr" "100"
			/// @DnDArgument : "var" "health"
			health = 100;
		}
	}
}