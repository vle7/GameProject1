/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 470D3DA1
/// @DnDArgument : "var" "state"
/// @DnDArgument : "value" "1"
if(state == 1)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 095F0E68
	/// @DnDParent : 470D3DA1
	/// @DnDArgument : "var" "state"
	state = 0;

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 6EA4066F
	/// @DnDParent : 470D3DA1
	/// @DnDArgument : "spriteind" "spr_doll_boss"
	/// @DnDSaveInfo : "spriteind" "99f5d98e-299c-4c38-9bfc-75fb144e6ec9"
	sprite_index = spr_doll_boss;
	image_index = 0;
}