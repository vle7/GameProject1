/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 2DEEE0DD
/// @DnDArgument : "expr" "aboss_inv"
/// @DnDArgument : "not" "1"
if(!(aboss_inv))
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 55E3138A
	/// @DnDParent : 2DEEE0DD
	/// @DnDArgument : "expr" "aboss_weak"
	if(aboss_weak)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 376B77DA
		/// @DnDParent : 55E3138A
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "aboss_weak"
		aboss_weak = false;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 070A55F0
		/// @DnDParent : 55E3138A
		/// @DnDArgument : "expr" "-10"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "ah"
		ah += -10;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 668B2871
	/// @DnDParent : 2DEEE0DD
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6C0E29B4
		/// @DnDParent : 668B2871
		/// @DnDArgument : "expr" "-5"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "ah"
		ah += -5;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 330A42E8
	/// @DnDParent : 2DEEE0DD
	/// @DnDArgument : "var" "ah"
	/// @DnDArgument : "op" "3"
	if(ah <= 0)
	{
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 7EE364B1
		/// @DnDParent : 330A42E8
		instance_destroy();
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 79E548CC
	/// @DnDParent : 2DEEE0DD
	/// @DnDArgument : "expr" "state.flee"
	/// @DnDArgument : "var" "st"
	st = state.flee;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5007ACD7
	/// @DnDParent : 2DEEE0DD
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "aboss_inv"
	aboss_inv = true;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 2E4F0011
	/// @DnDParent : 2DEEE0DD
	/// @DnDArgument : "alarm" "1"
	alarm_set(1, 30);
}