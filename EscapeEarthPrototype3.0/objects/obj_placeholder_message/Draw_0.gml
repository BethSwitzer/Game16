// Draw the instance itself.
draw_self();

// This section draws the text stored in the 'text' variable,
// initialised in the Variable Definitions window.
// This changes the font to ft_hud.
draw_set_font(ft_hud);

// This changes the alignment to center-middle.
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// This changes the colour for the text drawn in the next action.
draw_set_colour($FF78BF28 & $ffffff);
var l0ED16B56_0=($FF78BF28 >> 24);
draw_set_alpha(l0ED16B56_0 / $ff);

draw_text_transformed(x + 0, y + -180, string("Controls: ") + string(text), 0.8, 0.8, 0);

draw_text_transformed(x + 0, y + -120, string("Arrow Keys or") + string(text), 0.8, 0.8, 0);

draw_text_transformed(x + 0, y + -60, string("A and D to move") + string(text), 0.8, 0.8, 0);

draw_text_transformed(x + 0, y + 0, string("Space to Jump") + string(text), 0.8, 0.8, 0);

draw_text_transformed(x + 0, y + 60, string("E to hide") + string(text), 0.8, 0.8, 0);

draw_text_transformed(x + 0, y + 120, string("in a box") + string(text), 0.8, 0.8, 0);

draw_text_transformed(x + 0, y + 180, string("R to restart") + string(text), 0.8, 0.8, 0);

// This resets the colour to white.
draw_set_colour($FFFFFFFF & $ffffff);
var l64BF1E78_0=($FFFFFFFF >> 24);
draw_set_alpha(l64BF1E78_0 / $ff);

// This resets the alignments to their default values.
draw_set_halign(fa_left);
draw_set_valign(fa_top);