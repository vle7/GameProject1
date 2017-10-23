/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
/// @DnDVersion : 1
/// @DnDHash : 6FD5311D
/// @DnDArgument : "x1" "50"
/// @DnDArgument : "y1" "50"
/// @DnDArgument : "x2" "500"
/// @DnDArgument : "y2" "80"
/// @DnDArgument : "value" "health"
/// @DnDArgument : "backcol" "$FF000000"
/// @DnDArgument : "mincol" "$FF00007C"
/// @DnDArgument : "maxcol" "$FF007F02"
draw_healthbar(50, 50, 500, 80, health, $FF000000 & $FFFFFF, $FF00007C & $FFFFFF, $FF007F02 & $FFFFFF, 0, (($FF000000>>24) != 0), (($FFFFFFFF>>24) != 0));