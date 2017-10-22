/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2B6EEAF2
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)//set target$(13_10)var targetx = obj_player.x + (obj_player.move * 200)$(13_10)var targety = obj_player.y - 100$(13_10)$(13_10)x += (targetx-x)/25$(13_10)y += (targety-y)/25$(13_10)//bound camera$(13_10)if(y > room_height - 300){$(13_10)	y = room_height - 300$(13_10)}$(13_10)if(x > room_width - 400){$(13_10)	x = room_width - 400$(13_10)}$(13_10)if (x < 400){$(13_10)	x = 400$(13_10)}$(13_10)$(13_10)$(13_10)var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0)$(13_10)$(13_10)camera_set_view_mat(camera, vm)"
/// @description Execute Code
//set target
var targetx = obj_player.x + (obj_player.move * 200)
var targety = obj_player.y - 100

x += (targetx-x)/25
y += (targety-y)/25
//bound camera
if(y > room_height - 300){
	y = room_height - 300
}
if(x > room_width - 400){
	x = room_width - 400
}
if (x < 400){
	x = 400
}


var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0)

camera_set_view_mat(camera, vm)