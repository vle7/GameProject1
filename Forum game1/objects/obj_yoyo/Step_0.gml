/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0DD0FD53
/// @DnDArgument : "var" "go_back"
/// @DnDArgument : "value" "1"
if(go_back == 1)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 0AA1062B
	/// @DnDParent : 0DD0FD53
	/// @DnDArgument : "x" "obj_player.x"
	/// @DnDArgument : "y" "obj_player.y"
	direction = point_direction(x, y, obj_player.x, obj_player.y);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 2B640894
	/// @DnDParent : 0DD0FD53
	/// @DnDArgument : "speed" "15"
	speed = 15;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0505FC9E
	/// @DnDParent : 0DD0FD53
	/// @DnDArgument : "var" "abs(x - obj_player.x)"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "7"
	if(abs(x - obj_player.x) <= 7)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 621F6FBC
		/// @DnDParent : 0505FC9E
		/// @DnDArgument : "var" "abs(y - obj_player.y)"
		/// @DnDArgument : "op" "3"
		/// @DnDArgument : "value" "7"
		if(abs(y - obj_player.y) <= 7)
		{
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 228604FB
			/// @DnDParent : 621F6FBC
			instance_destroy();
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 746E8E68
			/// @DnDApplyTo : aaf0757a-d0cb-4853-846f-7ddeacc0edc5
			/// @DnDParent : 621F6FBC
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "var" "can_throw"
			with(obj_player) {
			can_throw = 1;
			
			}
		}
	}
}