/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 09D35CF9
/// @DnDArgument : "soundid" "stage"
/// @DnDArgument : "loop" "1"
/// @DnDSaveInfo : "soundid" "c954477e-b7ab-475b-87f4-af609ce5148c"
audio_play_sound(stage, 0, 1);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 24E5E401
/// @DnDArgument : "code" "spawn_at = 0$(13_10)boss_object = noone$(13_10)$(13_10)camera = camera_create()$(13_10)$(13_10)var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0)$(13_10)var pm = matrix_build_projection_ortho(768, 576, 1, 10000)$(13_10)$(13_10)camera_set_view_mat(camera, vm)$(13_10)camera_set_proj_mat(camera, pm)$(13_10)$(13_10)view_camera[0] = camera"
spawn_at = 0
boss_object = noone

camera = camera_create()

var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0)
var pm = matrix_build_projection_ortho(768, 576, 1, 10000)

camera_set_view_mat(camera, vm)
camera_set_proj_mat(camera, pm)

view_camera[0] = camera