/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 20F7D018
/// @DnDArgument : "var" "state"
/// @DnDArgument : "value" "2"
if(state == 2)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 545084E6
	/// @DnDParent : 20F7D018
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "state"
	state = 1;

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 43E764F8
	/// @DnDParent : 20F7D018
	/// @DnDArgument : "spriteind" "spr_doll"
	/// @DnDSaveInfo : "spriteind" "b528576b-6ae6-42cc-9354-7fee7f5567dc"
	sprite_index = spr_doll;
	image_index = 0;
}