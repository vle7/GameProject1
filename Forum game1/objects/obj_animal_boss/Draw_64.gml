/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
/// @DnDVersion : 1
/// @DnDHash : 1B98405E
/// @DnDArgument : "x1" "50"
/// @DnDArgument : "y1" "view_hport[0] - 50"
/// @DnDArgument : "x2" "view_wport[0] -50"
/// @DnDArgument : "y2" "view_hport[0] - 10"
/// @DnDArgument : "value" "100 * ah/150"
/// @DnDArgument : "backcol" "$FF000000"
/// @DnDArgument : "mincol" "$FF00A0A3"
/// @DnDArgument : "maxcol" "$FF000099"
draw_healthbar(50, view_hport[0] - 50, view_wport[0] -50, view_hport[0] - 10, 100 * ah/150, $FF000000 & $FFFFFF, $FF00A0A3 & $FFFFFF, $FF000099 & $FFFFFF, 0, (($FF000000>>24) != 0), (($FFFFFFFF>>24) != 0));