/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 15A2AD76
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "-1 * move"
/// @DnDArgument : "sprite" "sprite_index"
/// @DnDArgument : "frame" "image_index"
draw_sprite_ext(sprite_index, image_index, x + 0, y + 0, -1 * move, 1, 0, $FFFFFFFF & $ffffff, ($FFFFFFFF >> 24) / $ff);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 6B5F165D
/// @DnDArgument : "color" "$FF0000FF"
draw_set_colour($FF0000FF & $ffffff);
draw_set_alpha(($FF0000FF >> 24) / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
/// @DnDVersion : 1
/// @DnDHash : 71235121
/// @DnDArgument : "x1" "((sprite_width/2)- 20) * move"
/// @DnDArgument : "x1_relative" "1"
/// @DnDArgument : "y1" "-(sprite_height/2)"
/// @DnDArgument : "y1_relative" "1"
/// @DnDArgument : "x2" "((sprite_width/2) + 30) * move"
/// @DnDArgument : "x2_relative" "1"
/// @DnDArgument : "y2" "sprite_height/2"
/// @DnDArgument : "y2_relative" "1"
draw_rectangle(x + ((sprite_width/2)- 20) * move, y + -(sprite_height/2), x + ((sprite_width/2) + 30) * move, y + sprite_height/2, 1);