/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2B6EEAF2
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)//set target$(13_10)var targetx = obj_player.x + (obj_player.move * 200)$(13_10)var targety = obj_player.y$(13_10)$(13_10)x += (targetx-x)/10$(13_10)y += (targety-y)/10"
/// @description Execute Code
//set target
var targetx = obj_player.x + (obj_player.move * 200)
var targety = obj_player.y

x += (targetx-x)/10
y += (targety-y)/10