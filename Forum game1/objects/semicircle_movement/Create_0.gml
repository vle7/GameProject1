/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 382FEFFC
/// @DnDInput : 5
/// @DnDArgument : "expr" "obj_target"
/// @DnDArgument : "expr_1" "y - target.y"
/// @DnDArgument : "expr_2" "x - target.x"
/// @DnDArgument : "expr_4" "distance_to_object(target)"
/// @DnDArgument : "var" "target"
/// @DnDArgument : "var_1" "ydiff"
/// @DnDArgument : "var_2" "xdiff"
/// @DnDArgument : "var_3" "theta"
/// @DnDArgument : "var_4" "distance"
target = obj_target;
ydiff = y - target.y;
xdiff = x - target.x;
theta = 0;
distance = distance_to_object(target);