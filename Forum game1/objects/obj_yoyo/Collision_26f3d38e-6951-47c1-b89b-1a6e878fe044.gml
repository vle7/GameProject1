/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 5F7F39C6
instance_destroy();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 08F13FB2
/// @DnDInput : 2
/// @DnDApplyTo : aaf0757a-d0cb-4853-846f-7ddeacc0edc5
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "state"
with(obj_player) {
state = 1;
variable = 0;

}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2ABAE020
/// @DnDInput : 5
/// @DnDApplyTo : aaf0757a-d0cb-4853-846f-7ddeacc0edc5
/// @DnDArgument : "expr" "obj_hook"
/// @DnDArgument : "expr_1" "y - target.y"
/// @DnDArgument : "expr_2" "x - target.x"
/// @DnDArgument : "expr_4" "distance_to_object(target)"
/// @DnDArgument : "var" "target"
/// @DnDArgument : "var_1" "ydiff"
/// @DnDArgument : "var_2" "xdiff"
/// @DnDArgument : "var_3" "theta"
/// @DnDArgument : "var_4" "distance"
with(obj_player) {
target = obj_hook;
ydiff = y - target.y;
xdiff = x - target.x;
theta = 0;
distance = distance_to_object(target);

}