/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 25925581
/// @DnDComment : Draw the instance itself.
draw_self();

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 12EFED31
/// @DnDComment : This section draws the text stored in the 'text' variable,$(13_10)initialised in the Variable Definitions window.$(13_10)$(13_10)This changes the font to ft_hud.$(13_10)
/// @DnDArgument : "font" "ft_hud"
/// @DnDSaveInfo : "font" "ft_hud"
draw_set_font(ft_hud);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 108A11FF
/// @DnDComment : This changes the alignment to center-middle.
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 0ED16B56
/// @DnDComment : This changes the colour for the text drawn in the next action.
/// @DnDArgument : "color" "$FF78BF28"
draw_set_colour($FF78BF28 & $ffffff);
var l0ED16B56_0=($FF78BF28 >> 24);
draw_set_alpha(l0ED16B56_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 6DA1CB08
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-180"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "0.8"
/// @DnDArgument : "yscale" "0.8"
/// @DnDArgument : "caption" ""Controls: ""
/// @DnDArgument : "text" "text"
draw_text_transformed(x + 0, y + -180, string("Controls: ") + string(text), 0.8, 0.8, 0);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 5A153E45
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-120"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "0.8"
/// @DnDArgument : "yscale" "0.8"
/// @DnDArgument : "caption" ""Arrow Keys or""
/// @DnDArgument : "text" "text"
draw_text_transformed(x + 0, y + -120, string("Arrow Keys or") + string(text), 0.8, 0.8, 0);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 145D1E66
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-60"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "0.8"
/// @DnDArgument : "yscale" "0.8"
/// @DnDArgument : "caption" ""A and D to move""
/// @DnDArgument : "text" "text"
draw_text_transformed(x + 0, y + -60, string("A and D to move") + string(text), 0.8, 0.8, 0);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 1E535339
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "0.8"
/// @DnDArgument : "yscale" "0.8"
/// @DnDArgument : "caption" ""Space to Jump""
/// @DnDArgument : "text" "text"
draw_text_transformed(x + 0, y + 0, string("Space to Jump") + string(text), 0.8, 0.8, 0);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 67329D84
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "60"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "0.8"
/// @DnDArgument : "yscale" "0.8"
/// @DnDArgument : "caption" ""E to hide""
/// @DnDArgument : "text" "text"
draw_text_transformed(x + 0, y + 60, string("E to hide") + string(text), 0.8, 0.8, 0);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 23D0920C
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "120"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "0.8"
/// @DnDArgument : "yscale" "0.8"
/// @DnDArgument : "caption" ""in a box""
/// @DnDArgument : "text" "text"
draw_text_transformed(x + 0, y + 120, string("in a box") + string(text), 0.8, 0.8, 0);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 786B87DF
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "180"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "0.8"
/// @DnDArgument : "yscale" "0.8"
/// @DnDArgument : "caption" ""R to restart""
/// @DnDArgument : "text" "text"
draw_text_transformed(x + 0, y + 180, string("R to restart") + string(text), 0.8, 0.8, 0);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 64BF1E78
/// @DnDComment : This resets the colour to white.
draw_set_colour($FFFFFFFF & $ffffff);
var l64BF1E78_0=($FFFFFFFF >> 24);
draw_set_alpha(l64BF1E78_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 5A2BEF09
/// @DnDComment : This resets the alignments to their default values.
draw_set_halign(fa_left);
draw_set_valign(fa_top);