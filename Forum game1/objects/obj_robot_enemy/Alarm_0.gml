/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 04BADFCF
/// @DnDArgument : "var" "st"
st = 0;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 721952B3
/// @DnDArgument : "code" "var bullet = instance_create_layer(x,y,"Instances", obj_robot_bullet)$(13_10)	bullet.type = 0$(13_10)	bullet.speed = hsp"
var bullet = instance_create_layer(x,y,"Instances", obj_robot_bullet)
	bullet.type = 0
	bullet.speed = hsp