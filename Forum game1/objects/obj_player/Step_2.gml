/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4ABD5998
/// @DnDArgument : "var" "health"
/// @DnDArgument : "op" "3"
if(health <= 0)
{
	/// @DnDAction : YoYo Games.Rooms.Restart_Room
	/// @DnDVersion : 1
	/// @DnDHash : 4286B78C
	/// @DnDParent : 4ABD5998
	room_restart();

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0CA12B98
	/// @DnDParent : 4ABD5998
	/// @DnDArgument : "expr" "100"
	/// @DnDArgument : "var" "health"
	health = 100;
}